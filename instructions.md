The challenge
You have to build a simpler and modified version of Twitter. This version consists of 3 entities as the following ERD:

https://p-vvf5mjm.t4.n0.cdn.getcloudapp.com/items/2NuvpmKd/7dd02260-38e4-44f7-9aa7-317e57dd0aac.jpg?source=viewer&v=12c1f2b9a75fb58984d6ccbc98f752c4

Associations

A User could have many Tweets.
A Tweet belongs to a User and could have many Comments.
A Comment belongs to a Tweet and User


Validations
User

email cannot be blank, should have an email format, and be unique.
username cannot be blank and be unique.
name cannot be blank.
avatar is optional. If the user doesn't provide an image, a placeholder image will be used on view.
password should be at least 6 characters long.

Tweet

body cannot be blank and should be at most 140 characters long.
comments_count starts at 0 by default.

Comment

body cannot be blank and should be at most 140 characters long.

Authentication
Only logged users can create, edit and destroy their own Tweets and Comments. Not logged users can only read the list of Tweets and the list of comments for each Tweet.

You can use any tool that allows authentication with email and password.

Resources
Check the Figma Designs here.

We wish you great success! 💪