import consumer from "./consumer"

consumer.subscriptions.create({
    channel: 'BoardChannel',
    board_id: 43
  },{
  connected() {
    console.log("Connected")
  },

  disconnected() {
    console.log("Disconnected")
  },

  received(data) {
    console.log("Received: ", data)
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
    <br>
    `
    const chatLog = document.querySelector('#chatLog')
    chatLog.insertAdjacentHTML('beforeend', template)
  },

  exchange(data) {
  }
})
