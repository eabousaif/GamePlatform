'use strict';

class PlaySessionFormatter {
  constructor(play_sessions) {
    this.play_sessions = play_sessions
  }

  createSession() {
    this.play_sessions.forEach(function(session){
      const videogameName = session.video_game.name
      const duration = session.duration
      const timePlayed = session.created_at
      new PlaySession(videogameName, duration, timePlayed)
    })
  }

  playSessionsTemplate() {
    if (PlaySession.all.length === 0) {
      this.createSession()
    }
    const $ul = $("div.display_play_sessions")
    $ul.html("")
    PlaySession.all.forEach(function(session){
      $ul.append(`${session.playSessionEl()}`)
    })
  }
}
