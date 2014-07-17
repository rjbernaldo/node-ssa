Node APP

TASKS - all steps require session ID.
1) index
	input: user id from session ID
	output: GET API call with user id
	success: response of all tasks
	action to be taken: parse takse for the view
2) show
	input: user id and task id
	output:GET API call with input
	success: a single task json object
	action to be taken: display task
3) new
	render the form
4) create
	input: userid, content, completed?
	output: POST api call with input
	success: redirect to index
	fail: redirect to new (flash message)

4) edit
	input: taskid and user id
	output: GET api call with input
	succes: render form with reponse information
	fails: redirect to previous page with flash message

5)update
	input: userid, task id, content, completed?
	output: PUT? api call with input to update specific task
	succes: reidrect to show.
	fail: redirects to edit with flash message

6) destroy
	input:user id task id
	output:DELETE api call with input 
	success:redirect to index
	fail: redirect to index

User
1)register
	input: params(username, password)
	output: POST url api call to create user 
2)login
	input: params(username, password)
	output: GET url api call to see if user exists success/fail lead to sign in 
3)logout
	setting session to nil
