# dog_app

A link to GitHub repository: https://github.com/ewhiley/dog_app


Description of the app:
The aim of our project is to create a dog grooming app. It will assist a dog grooming business with registering new customers, and making appointments easily. We envisage the app to include at least one class, methods, case statements, and testing methods. The dog class will be the initial blueprint for the process, creating dog objects. Register Dog will be an instance method that will allow the pet owner to register their dog in the system. We see this as the MVP which is achievable in 2 days. 
For the presentation, we want to do a walk through of the registration and create a new customer profile. 
We see this project as being scalable and can been updated to include more services in the future, for example, breaking down the grooming appointment into several more specific services and having a database to store appointments.

Instructions for use:
The app offers two options, one is to display the days appointments and second, to register a dog for an appointment. The owner of the dog grooming service will click on 1 or 2 depending on what he/she wants to access. The appointments are accessed from an external file which can potentially be google calendar. As the service is mobile, the data received from each registered dog doesn't need to be stored beyond that appointment.
![Class](https://github.com/ewhiley/dog_app/blob/master/docs/Class.png)
![Menu](https://github.com/ewhiley/dog_app/blob/master/docs/menu.png)
![Register Method](https://github.com/ewhiley/dog_app/blob/master/docs/register_method.png)
![Display CSV](https://github.com/ewhiley/dog_app/blob/master/docs/display%20and%20export%20to%20csv.png)
![Testing](https://github.com/ewhiley/dog_app/blob/master/docs/Testing%20method%20to%20test%20the%20validation%20method.png)
![Validation](https://github.com/ewhiley/dog_app/blob/master/docs/validation%20of%20input.png)


We chose to do a dog class because we would need to access several attributes relating to the registered dog. We chose a case statment into a while loop. The while loop prevents the app from ending before the user exits. The case statment is to cover the menu options, and respond with an error if the input isn't accurate. The register method calls for dog details to create each dog object, validates the input with the checker method and writes it to a CSV. It also gives the user some feedback to say when the dog has been registered. We decided to use a csv file to input appointments as you might do with a google calendar. The testing method tests the user input validation method without us having to test individually. The validation method is to ensure the user input has minimum error.

Details of design & planning process:
![Brainstorming](https://github.com/ewhiley/dog_app/blob/master/docs/Brainstorming.jpg)
![Planning Menu](https://github.com/ewhiley/dog_app/blob/master/docs/Planning%20menu.jpg)
![Workflow Chart](https://github.com/ewhiley/dog_app/blob/master/docs/Workflow.pdf)
![Trello 2](https://github.com/ewhiley/dog_app/blob/master/docs/Trello%202.png)
![Trello 3](https://github.com/ewhiley/dog_app/blob/master/docs/Trello%203.png)
![Slack](https://github.com/ewhiley/dog_app/blob/master/docs/Slack.png)
