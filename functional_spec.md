# Bucket List CLI Functional Specification
The Bucket List CLI app provides users with a simple, command-line interface to add a bucket list item they have completed, which date it was completed, and view a list of all the bucket list items they have completed so far.

## User Stories

### Add a bucket list item
- As a user, I want to input a bucket list event I have completed, so that I can add to a list of all the bucket list items I have completed.
- As a user, I want to input the date at which I completed the bucket list event, so that I can check when I have completed the events.

### Checking the list of bucket list items completed
- As a user, I want to view a list of all the bucket list items that I have completed and the dates at which I completed each specific item.

## Functional Requirements
- The app must prompt the user to choose an option to add a bucket list item, view a list of the bucket items completed, or exit the app.
- The app must prompt the user, when adding a bucket list item, to type the activity they completed and input the date at which they have completed the item.
- The app must prompt the user to input the date in the correct format (i.e. YYYY-MM-DD, YYMMDD, YYYYMMDD); otherwise, the app will prompt the user to put the date in the correct format until the user puts the date in the correct format.
- The app must display the list of items completed when prompted with the name of the activity and the date it was completed as inputted by the user.
- The app must allow the user to exit the app when selected.