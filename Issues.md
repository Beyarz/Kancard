# Issues / room for improvment

- The owner value & owner id is being passed from the client to the server as parameter, this can easily be forged by the client in order to fool the server. Instead, the two values should be handled in the controller and injected to the BoardsController#create action.

- `db/schema.rb` lacks stronger types, some columns should not be nullable & other columns should have a default value.

- The delete button on every message bubble is only visible for the owner, BUT other users can still send a DELETE request to rails backend since it is not validated on the server side. In other words, everyone in the board can remove anyones messages.

- More systems, integrations tests needs to be written.

- Non working confirmation emails. Even if you register with an email adress, there is no system for sending & verifying an email adress.
