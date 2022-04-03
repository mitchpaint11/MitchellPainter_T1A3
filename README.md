# About:
- Woofz is a dog walkers management Application. The App usage is from a dog walkers perspective, within a two-sided marketplace for the purpose of managing, organising and selecting dog walking jobs.
- The app is designed and built to help manage, create, read, update, and delete records of previous, current, and future dog walking jobs.
 
#### Source Control Repository Link:
https://github.com/mitchpaint11/MitchellPainter_T1A3

#### Code Style Guide:
https://rubystyle.guide/

https://github.com/rubocop/rubocop

# Installation
Woofz can be installed by cloning this repository by clicking the Code button at the top of this page.

# Features:
##### Feature 1 - Current Available Jobs:
If "1" is selected it allows the user (Dog Walker) to view today's dog walking jobs, select and confirm which dog they would like to walk and find out how much they will be paid for completing that walk. Depending on the response received by the terminal, the app then prompts the user for their name, asks if they are ready and moves on. 
When "1" is selected the terminal displays “Hello #{@name} the user is prompted to “return/enter for a list of dogs that need walks today”. This list includes information such as: Name, Breed, Age, and Walk-duration in mins. The user is then prompted with “which dog would you like to walk?” and is prompted to select from the numbered list and enter 1-5 for the selected dog. Once the user has made a selection the app will prompt the user to confirm with a Y/N
If the user confirms with "Y" it will display a message stating the final confirmation of the job, including the dog's Name, the walk distance required and finally the amount the walker will be paid. 
The user will then be prompted to “return/enter for main menu” prompting the user to make another selection from the menu if they would like to continue or exit. If exit is selected the message “Thank You, Have A Nice Day!” Will be displayed. If the user selects ’N’ the app will redirect through the use of a loop back to the beginning.

##### Feature 2 - Future/Upcoming Jobs:
If "2" is selected it allows the user (Dog Walker) to view future dog walking jobs and make any changes or cancellations required. If "2" is selected from the menu options it will allow the user to view any future/upcoming walking jobs that have been requested, allowing the user to view things like the job date, time, name, age, breed and walk duration. The user will also be able to make any changes to these bookings as required, E.g. changes to the booking date/time or walk duration or make any cancellations/deletions to any future bookings. It will also allow the user to add any new walking jobs or data that may be required and not yet input.
##### Feature 3 - Past Jobs:
If "3" is selected, it allows the user (Dog Walker) to view an archive of any past, completed dog walking jobs and see when they occurred and who walked which dog. This allows the user to view the dogs’ information such as, what day/time the dog was walked, who walked the dog, and The walk duration in minutes. It also displays the dog owners’ contact information, such as Names, Addresses and Phone Numbers, and allows the user to view a rating/5 the customer made, based on the service they felt they received.

#### Implementaion plan:
- Create/Design outline of application
- Build menu and implement menu option 1: Current Available Jobs:
  - 1 :Current Available Jobs
  - 2 :Future/Upcoming Jobs
  - 3 :Past Jobs
  - 4 :Exit
  - Please select (1-4):
- Build loop including Case choice, with when/if
- Write class: Dog
- Build loop for when/if invalid entry on "Which dog would you like to walk?"
- Add RainbowGem to option 1, to accentuate different words.
- Build menu option 2: Future/Upcoming Jobs
- Add walk-date on menu option 2.
- Add RainbowGem to option 2, to accentuate different words.
- Build menu option 3: Past Jobs
- write class: Owner
- Add Owner details to option 3
  - Name, Address, Ph.
- Add rating out of 5 for past walks.
- Add RainbowGem to option 3, to accentuate different words.
- Implement correct response when Y/N entered.
  - Build loop: When user selects Y/N
  - if 'Y' continue to next prompt.
  - if 'N' return to main menu.

## Help.
For Help, please see help.txt file within repository.