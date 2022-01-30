import consumer from "./consumer"

function checkIfIdAvailable(id) {
  return document.getElementById(id) !== null
    ? document.getElementById(id).dataset
    : function() { return false }
}

function cleanPreviousSubscriptions() {
  consumer.subscriptions.subscriptions.forEach(sub => {
    consumer.subscriptions.remove(sub)
  })
}

document.addEventListener('turbolinks:load', () => {
  cleanPreviousSubscriptions()

  // We don't want the pub/sub to be executed when going to home page,
  // because the chatlogs only exists on the board page
  const boardDetails = checkIfIdAvailable('chatLog')
  const channelName = boardDetails.channel
  const board_id = boardDetails.room

  consumer.subscriptions.create({
    channel: channelName,
    room: board_id
  },{
    connected() {
      console.log("Connected")
    },

    disconnected() {
      console.log("Disconnected")
    },

    received(data) {
      console.log("Received: ", { data })
      this.constructMessage(data)
    },

    constructMessage(data) {
      const template = `
      <div class="message content box">
        <span class="subtitle">
          <strong>Name</strong> says:
        </span>
        <p>
          ${data['message']}
          <br>
          <small>${data['created_at']}</small>
        </p>
      </div>
      <br>`

      const chatLog = document.getElementById('chatLog')
      chatLog.insertAdjacentHTML('beforeend', template)
    },

    exchange(data) {
      console.log('Exchange: ', { data })
    }
  })
})
