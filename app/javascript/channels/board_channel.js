import consumer from "./consumer"

/**
 * We don't want the pub/sub to be executed when going to home page,
 * because the chatlogs only exists on the board page
 *
 * @public
 * @param { string } id
 * @return { DOMStringMap | false }
 */
function checkIfIdAvailable(id) {
  return document.getElementById(id) !== null
    ? document.getElementById(id).dataset
    : function () { return false }
}

/**
 * @public
 * @returns void
 */
function cleanPreviousSubscriptions() {
  consumer.subscriptions.subscriptions.forEach(sub => {
    consumer.subscriptions.remove(sub)
  })
}

document.addEventListener('turbolinks:load', () => {
  cleanPreviousSubscriptions()

  const boardDetails = checkIfIdAvailable('chatLog')
  /** @type { string } */
  const channelName = boardDetails.channel
  /** @type { string } */
  const board_id = boardDetails.room

  const chat = consumer.subscriptions.create({
    channel: channelName,
    room: board_id
  },{
    /**
     * @returns void
     */
    connected() {
      console.log("Connected")
    },

    /**
     * @returns void
     */
    disconnected() {
      console.log("Disconnected")
    },

    /**
     * @param { * } data
     * @returns void
     */
    received(data) {
      console.log("Received: ",{ data })
      this.constructMessage(data)
    },

    /**
     * @private
     * @param {{ message: string, created_at: new Date }} data
     * @returns void
     */
    constructMessage(data) {
      const template = `
      <div class="message content box">
        <span class="subtitle">
          <strong>Name</strong> says:
        </span>
        <p>
          ${data['message']}
        </p>
        <small>
          ${data['created_at']}
        </small>
      </div>
      <br>`

      /** @type { HTMLElement } */
      const chatLog = document.getElementById('chatLog')
      chatLog.insertAdjacentHTML('beforeend',template)
    },
  })

  document.getElementById('deliver').onclick = function () {
    const textareaValue = document.querySelector('.textarea').value

    if (textareaValue !== "") {
      chat.send({ message: textareaValue, created_at: new Date().toLocaleString() })
      document.querySelector('.textarea').value = ""
    }
  }
})
