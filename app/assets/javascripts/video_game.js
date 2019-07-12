'use strict';

// this file is responsible for handling your application's idea of an instance of a video_game. Thus, it never uses jQuery

class VideoGame {
  constructor(name, description, rating, release_year, id) {
    this.id = id
    this.name = name
    this.description = description
    this.rating = rating
    this.release_year = release_year
  }

  videoGameEl() {
    return `
      <h2 align="center"> ${this.name} </h2>
        <strong>Description:</strong> ${this.description}<br /><br />
        <strong>Rating:</strong> ${this.rating}/10<br /><br />
        <strong>Release Year:</strong> ${this.release_year}<br /><br />
        <a href="/video_games/${this.id}"><strong>More info</strong></a><br /><br />
    `
  }
}



