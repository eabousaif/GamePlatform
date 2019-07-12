'use strict';

class PlaySession {
  constructor(name, duration, created_at) {
    this.name = name
    this.duration = (duration/60).toFixed(2)
    this.created_at = created_at
    this.constructor.all.push(this)
  }

  datePlayed() {
    return moment(this.created_at).format('LL')
  }

  timePlayed() {
    return moment(this.created_at).format('LT')
  }

  playSessionEl() {
    return `
    <ul>
      <li><strong>${this.name}</strong></li>
      <p>Time Spent Playing - ${this.duration} hours</p>
      <p>Date Played - ${this.datePlayed()}</p>
      <p>Time Played - ${this.timePlayed()}</p>
    </ul><br />
    `
  }
}

PlaySession.all = []
