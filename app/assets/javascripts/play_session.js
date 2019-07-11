'use strict';

class PlaySession {
  constructor(name, duration, created_at) {
    this.name = name
    this.duration = (duration/60).toFixed(2)
    this.created_at = created_at
    this.constructor.all.push(this)
  }

  playSessionEl() {
    return `
    <ul>
      <li><strong>${this.name}</strong></li>
      <p>Time Spent Playing - ${this.name} - ${this.duration} hours</p>
      <p>Date Played - ${this.created_at}.toLocaleDateString()</p>
      <p>Time Played - ${this.created_at}.toLocaleTimeString()</p>
    </ul>
    `
  }
}

PlaySession.all = []
