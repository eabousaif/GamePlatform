'use strict';

class PlaySession {
  constructor(name, duration, created_at) {
    this.name = name
    this.duration = duration
    this.created_at = created_at
  }

  playSession() {
    return `
    <ol>
      <li><strong>${this.name}</strong></li>
      <li>Time Spent Playing ${this.name}: ${this.duration}</li>
      <li>Date Played:${this.created_at}</li>
      <li>Time Played:${this.created_at}</li>
    </ol>
    `
  }
}
