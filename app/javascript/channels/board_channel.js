import consumer from "./consumer"

/**
 * We don't want the pub/sub to be executed when going to home page,
 * because the chatlog only exists each individual board page
 *
 * @public
 * @param { string } id
 * @return { DOMStringMap | false }
 */
function ChannelExist(id) {
  return document.getElementById(id) !== null
    ? document.getElementById(id).dataset
    : false
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

  /** @type { DOMStringMap | false } */
  let boardDetails
  if (!(boardDetails = ChannelExist('chatLog'))) {
    return false
  }

  /** @type { string } */
  const channelName = boardDetails.channel
  /** @type { string } */
  const board_id = boardDetails.room

  consumer.subscriptions.create({
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
     * @param { { html: HTML } } data
     * @returns void
     */
    received(data) {
      console.log("Received: ", { data })
      this.constructMessage(data)
    },

    /**
     * @private
     * @param {{ html: HTML }} html
     * @returns void
     */
    constructMessage(html) {
      /** @type { HTMLElement } */
      const chatLog = document.getElementById('chatLog')
      chatLog.insertAdjacentHTML('beforeend', html)
    },
  })
})
