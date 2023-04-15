<style>
/* ------ GENERAl LAYOUT ------ */
* {
  font-family: "Roboto", sans-serif;
  margin: 0px;
  padding: 0px;
  box-sizing: border-box;
}

body {
  background: #dbdbdb;
}

i {
  width: 60px;
  margin: auto;
}

/* ------ FONTS ------ */
.font-name {
  color: #000000;
  font-size: 1em;
  font-weight: inherit;
  padding-bottom: 3px;
}

.font-preview {
  color: #444444;
  font-size: 0.9em;
  font-weight: inherit;
}

.font-online {
  color: #777777;
  font-size: 0.8em;
  font-weight: inherit;
}

.green-background {
  background: #009688;
  height: 130px;
  width: 100%;
  position: fixed;
  top: 0;
  z-index: -100;
}

.wrap {
  display: flex;
  height: 100vh;
  min-width: 600px;
  max-width: 1200px;
  margin: auto;
  box-shadow: 0 2px 2px #aaaaaa;
}

/* ------ LEFT SIDE ------ */
.left {
  width: 400px;
}

.profile {
  width: 100%;
  height: 60px;
  background: #eeeeee;
  border-right: 1px solid #dbdbdb;
  display: flex;
  justify-content: space-between;
}

.profile img {
  width: 40px;
  height: 40px;
  margin: 10px;
  border-radius: 50%;
}

.icons {
  color: #777777;
  display: flex;
}

.wrap-search {
  width: 100%;
  height: 45px;
  background: #ffffff;
  display: flex;
}

.search {
  width: calc(100% - 20px);
  height: 30px;
  background: #ffffff;
  margin: auto;
  border: 1px solid #eeeeee;
  border-radius: 5px;
  display: flex;
}

.search i {
  widht: 60px;
}

.search i,
.wrap-message i {
  color: #aaaaaa;
  text-align: center;
}

.input-search {
  width: 100%;
  border: none;
}

.input-search:focus {
  outline: none;
}

.contact-list {
  background-color: #ffffff;
  width: 100%;
  height: calc(100% - 60px);
  overflow-y: auto;
}

.contact,
.active-contact,
.new-message-contact {
  height: 70px;
  background-color: #ffffff;
  display: flex;
  cursor: pointer;
}

.contact img,
.active-contact img,
.new-message-contact img {
  width: 50px;
  height: 50px;
  margin: 10px;
  border-radius: 50%;
}

.active-contact {
  background-color: #0096881f;
}

.contact:hover,
.new-message-contact:hover {
  background-color: #22b8aa1f;
}

.new-message-contact {
  font-weight: bold;
}

.contact-preview {
  width: 100%;
  height: 70px;
  border-bottom: 1px solid #eeeeee;
  display: flex;
  overflow: hidden;
}

.contact-text {
  height: 40px;
  margin: auto 0;
  overflow: hidden;
}

.contact-time {
  width: 55px;
  color: rgba(0, 0, 0, 0.4);
  font-size: 0.8em;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  padding: 10px;
  border-bottom: 1px solid #eeeeee;
}

.new-message {
  background: #09d261;
  border-radius: 50%;
  width: 20px;
  height: 20px;
  display: flex;
  margin: auto;
  flex-direction: column;
  color: white;
}

.new-message p {
  margin: auto;
}

/* ------ RIGHT SIDE ------ */
.right {
  min-width: calc(100% - 400px);
  position: relative;
}

.chat-head {
  background-color: #eeeeee;
  width: 100%;
  height: 60px;
  display: flex;
}

.chat-head img {
  width: 40px;
  height: 40px;
  margin: 10px;
  border-radius: 50%;
}

.chat-head i {
  color: #aaaaaa;
  width: 60px;
  margin: auto;
  text-align: center;
}

#close-contact-information {
  display: none;
}

.chat-name {
  width: 100%;
  margin: auto;
}

.wrap-chat {
  height: calc(100% - 120px);
  display: flex;
}

.chat {
  background-color: #e5ddd5;
  background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/1089577/background.png);
  width: 100%;
  padding: 0px 10%;
  padding-top: 7px;
  overflow-y: auto;
}

.information {
  width: 100%;
  position: relative;
  background: #f7f7f7;
  display: none;
  flex-direction: column;
  overflow: auto;
}

.information div {
  background: #ffffff;
  padding: 10px;
  margin-bottom: 20px;
}

.information img {
  width: 200px;
  height: 200px;
  margin: 20px auto;
  border-radius: 50%;
  float: left;
}

.information h1 {
  color: #009688;
  font-size: 14px;
  margin-bottom: 5px;
}

.listGroups {
  display: flex;
  margin: 0px !important;
}

.listGroups img {
  width: 40px;
  height: 40px;
  margin: 0px 10px 0px 0px;
}

.listGroups p {
  margin: auto 0px;
}

/* ------ CHAT ------ */
.chat-bubble {
  border-radius: 7px;
  box-shadow: 0 2px 2px rgba(0, 0, 0, 0.05);
  padding: 5px 7px;
  width: 350px;
  max-width: 100%;
  position: relative;
}

.you {
  background: #ffffff;
  margin: 0px auto 10px 0px;
}

.me {
  background: #dcf8c6;
  margin: 0px 0px 10px auto;
}

.your-mouth {
  width: 0;
  height: 0;
  border-bottom: 10px solid white;
  border-left: 10px solid transparent;
  position: absolute;
  bottom: 10px;
  left: -10px;
}

.my-mouth {
  width: 0;
  height: 0;
  border-bottom: 10px solid #dcf8c6;
  border-right: 10px solid transparent;
  position: absolute;
  bottom: 10px;
  left: 100%;
}

.content {
  margin: 0.5em 0;
  line-height: 120%;
  font-size: 0.9em;
  white-space: pre;
}

.content img {
  width: 100%;
}

.time {
  color: rgba(0, 0, 0, 0.4);
  font-size: 0.6em;
  text-align: right;
  margin-top: -10px;
  display: flex;
  align-items: center;
  justify-content: end;
}

.time span {
  margin-left: 2px;
}

.pink {
  color: #ee33aa;
}

.green {
  color: #44ff66;
}

.orange {
  color: #ff8811;
}

.wrap-message {
  padding-left: 10px;
  width: 100%;
  padding-top: 10px;
  padding-bottom: 10px;
  background: #f1f1f1;
  display: flex;
  position: absolute;
  bottom: 0;
  left: 0;
}

.message {
  width: 100%;
  background: #ffffff;
  margin: auto;
  border: 1px solid #eeeeee;
  border-radius: 5px;
  display: flex;
  padding: 10px 5px;
  position: relative;
}

.input-message {
  width: 100%;
  margin: 0px 10px;
  border: none;
  font-size: 10.5pt;
  max-height: 100px;
  overflow-y: auto;
  bottom: 0;
  left: 0;
}

.input-message:focus {
  outline: none;
}

/* ------ SCROLLBAR ------ */

body::-webkit-scrollbar,
.contact-list::-webkit-scrollbar,
.chat::-webkit-scrollbar,
.information::-webkit-scrollbar {
  width: 0.4em;
  height: 0.4em;
}

body::-webkit-scrollbar-thumb,
.contact-list::-webkit-scrollbar-thumb,
.chat::-webkit-scrollbar-thumb,
.information::-webkit-scrollbar-thumb {
  background-color: rgba(0, 0, 0, 0.2);
}

/* ------ MEDIA QUERIES ------ */
@media (min-width: 1200px) {
  .wrap {
    margin-bottom: 2vh;
    margin-top: 25px;
    height: calc(98vh - 25px);
  }
}

@media (max-width: 600px) {
  .wrap {
    height: calc(100vh - 0.4em);
  }
}

.button-send {
  padding-left: 10px;
  padding-right: 10px;
  border: 0;
  cursor: pointer;
}

.button-new-room {
  cursor: pointer;
  border: 0px;
  padding-right: 6px;
  color: #a0a0a0;
  transition: .2s;
  display: flex;
  align-items: center;
  text-align: left;
  white-space: nowrap;
}

.button-new-room:hover {
  color: #444444;
}

.button-new-room span{
  margin-left: 2px;
}

.form-room {
  position:fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
}

.form-room .backdrop{
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100vh;
  background: #CCCCCC;
  opacity: 0.6;
}
.input-room-name {
  border: 1px solid lightgrey;
  border-radius: 7px;
  box-shadow: 0 0 0px gray inset;
  margin-top: 5px;
  width: 250px;
  padding: 10px 15px;
  color: #525253;
}

#form-room {
  position: absolute;
  background: white;
  border-radius: 10px;
  box-shadow: 0px 5px 10px gray;
  overflow: hidden;
}
.form-room-body {
  padding: 20px 20px;
}
.form-room-footer {
  background-color: #cccccc;
  width: 100%;
  padding: 10px;
  text-align: right;
}

.button-save-room {
  background: #009688;
  border: 0;
  padding: 9px 20px;
  border-radius: 20px;
  transition: 0.2s;
  cursor: pointer;
  color: whitesmoke;
}

.button-save-room:hover {
  color: white;
  background: #007466;
}

.button-cancel-room {
  background: tomato;
  border: 0;
  padding: 9px 20px;
  border-radius: 20px;
  transition: 0.2s;
  cursor: pointer;
  color: whitesmoke;
  margin-right: 10px;
}
.button-cancel-room:hover {
  filter: brightness(90%);
}
.first-page {
  background: white;
  width: 100%;
  height: 100%;
  border-left: 1px solid #eee;
  display: flex;
  justify-content: center;
  align-items: center;
}
</style>

<template>
  <section class="left">
    <div class="profile">
      <div style="display: flex; align-items: center;font-size: 11pt;color: #303030;">
        <img src="https://yt3.ggpht.com/s8jVgPgaQsas3-p9v8THd_MxD2UdhnGcMVElYGov45RI2HaSbNF2WVZ84gvF2bawO1PqHgwzgw=s88-c-k-c0x00ffffff-no-rj-mo" />
        <span>{{ user.name }}</span>
      </div>
      <div class="icons">
        <button type="button" @click="toggleFormRoomJoin()" class="button-new-room">
          <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-layers-intersect-2" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
            <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
            <path d="M8 4m0 2a2 2 0 0 1 2 -2h8a2 2 0 0 1 2 2v8a2 2 0 0 1 -2 2h-8a2 2 0 0 1 -2 -2z"></path>
            <path d="M4 8m0 2a2 2 0 0 1 2 -2h8a2 2 0 0 1 2 2v8a2 2 0 0 1 -2 2h-8a2 2 0 0 1 -2 -2z"></path>
            <path d="M9 15l6 -6"></path>
          </svg>
          <span>Join Room</span>
        </button>

        <button type="button" @click="toggleFormRoomCreate()" class="button-new-room">
          <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-circle-plus" width="24" height="24" viewBox="0 0 24 24" stroke-width="1" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
            <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
            <path d="M12 12m-9 0a9 9 0 1 0 18 0a9 9 0 1 0 -18 0"></path>
            <path d="M9 12l6 0"></path>
            <path d="M12 9l0 6"></path>
          </svg>
          <span>New Room</span>
        </button>
      </div>
    </div>
    <div class="contact-list">
      <div class='contact' v-for="room in rooms" :class="{'active-contact':selected_room?.id == room.id}" :key="room.id" @click="selectRoom(room.id)">
        <img src='https://yt3.ggpht.com/s8jVgPgaQsas3-p9v8THd_MxD2UdhnGcMVElYGov45RI2HaSbNF2WVZ84gvF2bawO1PqHgwzgw=s88-c-k-c0x00ffffff-no-rj-mo' alt='profilpicture'>
        <div class='contact-preview'>
          <div class='contact-text'>
            <h1 class='font-name'>{{ room.name }}</h1>
            <p class='font-preview'>{{ room.user.name }}</p>
          </div>
        </div>
        <div class='contact-time'>
          <p>{{ moment(room.updated_at).format('HH:mm') }}</p>
        </div>
      </div>
    </div>
  </section>

  <section class="right">
    <template v-if="selected_room">
      <div class="chat-head">
        <img alt="profilepicture"
          src="https://yt3.ggpht.com/s8jVgPgaQsas3-p9v8THd_MxD2UdhnGcMVElYGov45RI2HaSbNF2WVZ84gvF2bawO1PqHgwzgw=s88-c-k-c0x00ffffff-no-rj-mo" />
        <div class="chat-name">
          <h1 class="font-name">{{ selected_room.name }}</h1>
          <p class="font-online"></p>
        </div>
      </div>
      <div class="wrap-chat">
        <div class="chat" ref="chat_wrapper">
          <template v-for="(chat, chat_key) in chats[selected_room.id]" :key="chat_key">
            <div class='chat-bubble' :class="{'me': chat.user_id == user.id, 'you': chat.user_id != user.id}">
              <div :class="{'my-mouth': chat.user_id == user.id, 'your-mouth': chat.user_id != user.id}"></div>
              <h4 v-if="chat.user_id != user.id">{{ chat.user_name }}</h4>
              <div class='content'>{{ chat.message }}</div>
              <div class='time'>
                <template v-if="chat.user_id == user.id">
                  <svg v-if="!chat.status" xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-check" width="13" height="13" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                    <path d="M5 12l5 5l10 -10"></path>
                  </svg>
                  <svg v-else xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-checks" width="13" height="13" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                    <path d="M7 12l5 5l10 -10"></path>
                    <path d="M2 12l5 5m5 -5l5 -5"></path>
                  </svg>
                </template>
                <span>{{ moment(chat.created_at).format('HH:mm') }}</span>
              </div>
            </div>
          </template>
        </div>
        <div class="information"></div>
      </div>
      <div class="wrap-message">
        <div class="message">
          <div ref="input_message" class="input-message" contenteditable style="background-color: white;" spellcheck="false" @keyup="inputDraft" v-on:keypress.ctrl.enter="sendMessage"></div>
        </div>
        <button type="button" @click="sendMessage()" class="button-send">
          <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-send" width="24" height="24"
            viewBox="0 0 24 24" stroke-width="2" stroke="#555555" fill="none" stroke-linecap="round"
            stroke-linejoin="round">
            <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
            <path d="M10 14l11 -11"></path>
            <path d="M21 3l-6.5 18a.55 .55 0 0 1 -1 0l-3.5 -7l-7 -3.5a.55 .55 0 0 1 0 -1l18 -6.5"></path>
          </svg>
        </button>
      </div>
    </template>
    <div v-else class="first-page">
      <div style="text-align: center;font-weight: 200;">
        <div>Hi Guys. Please <a href="#" @click="toggleFormRoomJoin">Join Room</a> or <a href="#" @click="toggleFormRoomCreate">Create New Room</a></div>
        <div style="margin-top: 10px;">Your Initial Name is <strong style="color: darkcyan;">{{ user.name }}</strong></div>
      </div>
    </div>
  </section>

  <form v-if="show_form_room_create" class="form-room" @submit.prevent="saveRoom">
    <div class="backdrop" @click="toggleFormRoomCreate"></div>
    <div id="form-room">
      <div class="form-room-body">
        <div><label>Name</label></div>
        <input type="text" v-model="room_name_create" class="input-room-name">
      </div>
      <div class="form-room-footer">
        <button type="button" @click="toggleFormRoomCreate()" class="button-cancel-room">Cancel</button>
        <button type="submit" class="button-save-room">Save</button>
      </div>
    </div>
  </form>

  <form v-if="show_form_room_join" class="form-room" @submit.prevent="joinRoom">
    <div class="backdrop" @click="toggleFormRoomJoin"></div>
    <div id="form-room">
      <div class="form-room-body">
        <div><label>Name</label></div>
        <input type="text" v-model="room_name_join" class="input-room-name">
      </div>
      <div class="form-room-footer">
        <button type="button" @click="toggleFormRoomJoin()" class="button-cancel-room">Cancel</button>
        <button type="submit" class="button-save-room">Join</button>
      </div>
    </div>
  </form>
</template>

<script setup>
import consumer from '../channels/consumer'
import { onMounted, ref, nextTick } from "vue"
import moment from 'moment'

const chat_wrapper = ref(null)
const rooms = ref([])
const chats = ref({})
const input_message = ref(null)
const draft = ref({})
const room_name_create = ref(null)
const room_name_join = ref(null)
const show_form_room_create = ref(false)
const show_form_room_join = ref(false)
const selected_room = ref(null)
const user = ref(window.user)

let channels = {}

const createChannel = room_id => consumer.subscriptions.create({ user_id: window.user.id, channel: "ChatChannel", room_id }, {
  connected() {
    console.log(`You'r connected with room_id: ${room_id}`)
  },

  disconnected() {
    console.log(`You'r disconnected with room_id: ${room_id}`)
  },

  received(data) {
    if (data.user_id == window.user.id) {
      let related_chat = chats.value[data.room_id].find(chat => !chat.status && chat.message == data.message)
      if (related_chat) {
        related_chat.status = true
        related_chat.id = data.id
      }
    } else {
      chats.value[data.room_id].push(data)
    }
    scrollBottom()
  },

  sendMessage(data) {
    this.perform('onMessage', { data })
  }
})

const inputDraft = e => {
  draft.value[selected_room.value.id] = input_message.value.innerHTML
}

const toggleFormRoomCreate = () => {
  show_form_room_create.value = !show_form_room_create.value
}

const toggleFormRoomJoin = () => {
  show_form_room_join.value = !show_form_room_join.value
}

onMounted(() => {
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
  loadRooms()
});

const loadRooms = (cb = null) => {
  axios.get("/rooms").then(res => {
    rooms.value = res.data.map(room => {
      // initialize chats if not exists
      if (!chats.value[room.id]) {
        chats.value[room.id] = []
      }
      if (!channels[room.id]) {
        channels[room.id] = createChannel(room.id)
      }
      return room
    })
    if (cb) {
      cb()
    }
  })
}

const selectRoom = room_id => {
  axios.get(`/rooms/${room_id}`).then(res => {
    selected_room.value = rooms.value.find(room => room.id == room_id)
    if (!draft.value[selected_room.value.id]) {
      draft.value[selected_room.value.id] = ''
    }

    chats.value[selected_room.value.id] = res.data.chat_messages.map(chat => {
      chat.user_name = chat.user.name
      delete chat.user
      return chat
    })

    nextTick(scrollBottom)
  })
};

const scrollBottom = () => {
  if (chat_wrapper.value) {
    chat_wrapper.value.scrollTop = chat_wrapper.value.scrollHeight
  }
}

const saveRoom = () => {
  if (room_name_create.value.trim()) {
    axios.post('/rooms', {
      name: room_name_create.value
    })
    .then(res => {
      toggleFormRoomCreate()
      room_name_create.value = null

      nextTick(() => {
        loadRooms(()=>selectRoom(res.data.id))
      })
    })
    .catch(err => {
      alert(err.response?.data?.error || err.response?.statusText || "there is error")
      console.error(err)
    })
  } else {
    alert("Room Name Required")
  }
}

const joinRoom = () => {
  if (room_name_join.value.trim()) {
    axios.put('/rooms', {
      name: room_name_join.value
    })
    .then(res => {
      toggleFormRoomJoin()
      room_name_join.value = null

      nextTick(() => {
        loadRooms(()=>selectRoom(res.data.id))
      })
    })
    .catch(err => {
      alert(err.response?.data?.error || err.response?.statusText || "there is error")
      console.error(err)
    })
  } else {
    alert("Room Name Required")
  }
}

const sendMessage = () => {
  const message = input_message.value.innerText
  input_message.value.innerHTML = ''
  if (message.trim()) {
    chats.value[selected_room.value.id].push({
      user_id: window.user.id,
      room_id: selected_room.value.id,
      status: false,
      message: message,
      created_at: moment().format('YYYY-MM-DD HH:mm:ss'),
      user_name: window.user.name
    })
    scrollBottom()
    channels[selected_room.value.id].sendMessage(message)
  }
}
</script>