# shinwang1.github.io Home Page
The purpose of this personal blog is to share my learnings and thoughts on technology and product development.

## User Stories
As a user, I want...
- full CRUD actions for managing posts on the blog.
- to be able to write posts in markdown format to add code snippets.
- highlight code syntax
- demostrate my projects and work
- have visitor comment and contact me through my site and social media

## Features
* Posts
  - CRUD
  - Markdown
  - Syntax highlighting
  - Comments
* Projects
  - CRUD
* Contact
  - Contact form
  - Sendgrid
* User (Devise)

## Models
* Post
  - title:string
  - date:string
  - content:string
* Project
  - title:string
  - description:text
  - link:string
  - Picture:string
* User
  - devise

## Pages
* Homepage
* Posts#index
* Posts#show
* Projects#index
* Projects#show
* Contact
