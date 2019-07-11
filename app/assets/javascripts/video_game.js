'use strict';

// this file is responsible for handling your application's idea of an instance of a video_game. Thus, it never uses jQuery

class VideoGame {
  constructor(name, description, rating, release_year) {
    this.name = name
    this.description = description
    this.rating = rating
    this.release_year = release_year
  }

  videoGameEl() {
    return `
      <h2> ${this.name} </h2>
      <ol>
        <li>Description: ${this.description}</li>
        <li>Rating: ${this.rating}</li>
        <li>Release Year: ${this.release_year}</li>
      </ol>
    `
  }
}



