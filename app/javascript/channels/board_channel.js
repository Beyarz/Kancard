import consumer from "./consumer"

/**
 * We don't want the pub/sub to be executed when going to home page,
 * because the chatlog only exists on each individual board page
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

document.addEventListener('turbo:load', () => {
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
      this.constructMessage("<p><strong>You connected</strong></p><br/>")
      console.log("Connected to the chat")
    },

    /**
     * @returns void
     */
    disconnected() {
      this.constructMessage("<p><strong>You disconnected</strong></p><br/>")
      console.log("Disconnected from the chat")
    },

    /**
     * @param { { html: HTML } } data
     * @returns void
     */
    received(data) {
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

      // Scroll to the bottom on every new message
      const articleMediaSelector = document.querySelector('article.media')
      articleMediaSelector.scrollTop = articleMediaSelector.scrollHeight
    },
  })
})
