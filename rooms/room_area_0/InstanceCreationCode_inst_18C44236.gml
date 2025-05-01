Event_Choice(event,"* Choose.&&    {choice 0}1    {choice 1}2",function(choice){
	if(choice == 0){
		Event_Dialog(event,"* Choice 1.");
	}
	if(choice == 1){
		Event_Dialog(event,"* Choice 2.");
	}
});