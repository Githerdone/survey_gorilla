$(document).ready(function() {
	 $('button[name="add_q"]').on('click', function(e){
	 	e.preventDefault();
	 	$('.questions').append('<div class="question"><input type="text" name="survey[][title]" placeholder="question"><div class="answers"><input type="text" name="survey[][answers][]" placeholder="answer"><input type="text" name="survey[][answers][]" placeholder="answer"></div><button type="submit" name="add_a">Add Answer</button></div>')
	 })

	 $('.questions').on('click', 'button[name="add_a"]', function(e){
	 	e.preventDefault();
	 	$(this).parent().find('.answers').append('<input type="text" name="survey[][answers][]" placeholder="answer">');
	 });
});
