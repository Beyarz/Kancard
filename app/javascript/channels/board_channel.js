import consumer from "./consumer"

consumer.subscriptions.create('BoardChannel', {
// const board_chat_room = consumer.subscriptions.create({
  // channel: 'BoardChannel',
  // board_id: 43,

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
        <!-- Name -->
        <strong>Name</strong> says:
      </span>
      <p>
        ${data['message']}
        <br>
        <small>
          <!-- Time ago -->
        </small>
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
