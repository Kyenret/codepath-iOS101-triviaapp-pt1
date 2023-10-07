# Project 3 - *Trivia App*

Submitted by: **Kyenret Yakubu Ayuba**

**Trivia App** is an app that presents users with at least three questions, each accompanied by a set of four (4) answer choices to select from. 

Time spent: **10** hours spent in total

## Required Features

The following **required** functionality is completed:

- [x] User can view the current question and 4 different answers
- [x] User can view the next question after tapping an answer
- [x] User can answer at least 3 different questions


The following **optional** features are implemented:

- [ ] User can use the vertical orientation of the app on any device
- [x] User can track the question they are on and how many questions are left
- [ ] User can see how many questions they got correct after answering all questions
- [ ] User should be able to restart the game after they've finished answering all questions

The following **additional** features are implemented:

- [x] User can see the category of each question displayed on the screen

## Video Walkthrough

<div>
    <a href="https://www.loom.com/share/48292748f92544a1bc01cc083fdf7a90">
      <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/48292748f92544a1bc01cc083fdf7a90-with-play.gif">
    </a>

## Notes

During the development of my trivia app, I faced various challenges. Initially, I struggled with connecting my ViewController to my main.Storyboard, but with assistance during office hours, I resolved this issue. I also encountered difficulties connecting my storyboard elements, especially multiple buttons, to my view controller code, requiring me to establish IBOutlet connections.
Another challenge arose when I created a separate file for my code instead of using my ViewController file. After hours of debugging, I realized this error and transferred my code, with the guidance of my Tech Fellow.
Additionally, I had issues with button actions not triggering correctly. I learned to connect all my buttons to a single IBAction method, allowing for smoother navigation to the next question.
Furthermore, a critical error causing a crash emerged during the transition to the next question. It resulted from an unexpected nil value linked to a deleted triviaQuestionLabel UILabel in my Storyboard. These challenges, though demanding, thought me that I need to be more attentive to my code to avoid little mistakes and to have more practice with my labs.


## License

    Copyright [2023] [Kyenret Yakubu Ayuba]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
