# CS490 iOS - mors. 

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)
2. [Unit 10](#Unit-10)
2. [Unit 11](#Unit-11)
2. [Unit 12](#Unit-12)



## Overview
### Description
mors. is an app that allows users to learn morse code through conversation.

### App Evaluation
[Evaluation of your app across the following attributes]
- **Category**: Education/Communication 
- **Mobile:** This app could work on both mobile and web. Although it would be better suited for mobile, it would still work roughly the same as a website.
- **Story:** Enables users to learn morse code through a fun and intuitive  interface. For instance, the user can participate in a fun tutorial and then chat with their friends in morse to hone their skill. 
- **Market:** This app is designed for anyone who is trying to learn morse code. Since it is in the education category, it would be designed in a way where it is safe and PG.
- **Habit:** This app could be used as often or unoften as the user wanted depending on how deep their desire to learn morse code is.
- **Scope:** This app could start off as a tutorial app for users to learn morse code and then eventually it will be a chat app for users to converse with others in morse code and develop their skills. It could further evolve into a multi language learning app and could be used in collaboration with Duolingo.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**
* User can send a message in morse 
* User can see the translation of their message
* User can receive a message in morse
* User can receive a ':)' everytime they get something correct

**Optional Nice-to-have Stories**
* User can register for an account
* User can log into an account
* User can progress through levels (e.g., beginner, intermediate, expert)
    * User can see a timer letting them know how much time they have left 
* User can chat with another person in english and/or morse 
* User can hear playback of morse audio

### 2. Screen Archetypes

* Register
  * User can register for an account
* Login
   * User can log into an account
* Creation
   * User can send a message in morse
* Stream
   * User can see the translation of their message
   * User can recieve a message in morse
   * User can recieve a ':)' everytime they get something correct
   * User sees a final score screen message

### 3. Navigation

**Tab Navigation** (Tab to Screen)
Remark: Tab Navigation not reflected in wireframe since we may opt to implement solely flow navigation

* Home screen (stream, shows what user got right and wrong)
* Current ranking screen (profile, Beginner, Intermediate, Expert)
* Setting screen 


**Flow Navigation** (Screen to Screen)
* Register screen -> Home screen
  * User can register and be redirected to home screen 
* Login screen -> Home screen
  * User can be redirected to home screen
* Home screen -> Creation screen
   * User can send a message in morse
* Home screen -> Creation or chatting screen
   * User can pick tutorial or chatting
* Home screen -> Instructions
   * User can pick random and be redirected to instructions
* Instructions -> Random
   * User can click start and begin the game
* Home screen -> Dictionary
   * User can click dictionary and be redirected to the dictionary page
* Game -> Creation 
   * User can enter their desired message in morse

## Wireframes

<img src="https://i.imgur.com/eEsZQES.png" width=600>
![](https://i.imgur.com/eEsZQES.png)


### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 
[This section will be completed in Unit 9]

### Models

Post
| Property            | Type   | Description |
| --------    | ------- | ------ |
| chatMessage         | char   | retrieving user's message    |
| randomMessage       | String | user enters game response |
| username            | String | username corresponding to account |
| userPassword        | String | password corresponding to user's account |
| score               | Number | score pertaining to game |
| picture             | Image  | user profile picture |
| difficultyLevel     | Number | number indicating whether user is beginner, intermediate, or expert|

### Networking
- Home ChatScreen
    - (READ/GET) user's messages
    - (READ/GET) user's username + password
    - (READ/GET) user's picture
    - (READ/GET) user's score
    - (READ/GET) user's difficulty level 
- Third part API 
    - (READ/GET) api.funtranslations.com/translate/
    
- [Create basic snippets for each Parse network request]
Remark: not using parse
- [OPTIONAL: List endpoints if using existing API such as Yelp]

## Unit 10
Video:

<img src='http://g.recordit.co/ars7GTN6o9.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

Completed user stories:
- [x] User can view homescreen 
- [x] User can write a message in morse

## Unit 11
Video:

<img src='http://g.recordit.co/IkwfiT6szz.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

Required user stories:
- [X] User can view dictionary screen
- [X] User can intitiate a tutorial game and generates random phrase 

## Unit 12
Video:

<img src='http://g.recordit.co/9oPPedZknN.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

Required user stories:
- [X] User can navigate seamlessly
- [X] User can enter text that is then sent to API endpoint 

## Unit 13 
Video: 

Remark: You may have to click through in order to access to gif 
<img src='http://g.recordit.co/BsVQN7KwU2.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />


Required user stories:
- [X] User can play the game
- [X] User can access the dictionary (not shown in video...but is completely animated)

