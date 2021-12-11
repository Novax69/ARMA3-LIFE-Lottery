
class NovConfig {
	//Here are all the config you can edit freely without problem :

	//variable similar to all my script if you have it don't copy it
	nov_useDonator = false; //Enable donators bonuses


	//Lotery Ticket
	nov_loteryTicket = 15; //15$ for a Ticket
	nov_jackpotMin = 10000; //If someone win restart a this number the lotery
	nov_jackpotAdd = 10000; // Every lose the lotery increase of this number
	nov_maxValuePossible = 9; // Permet de définir l'intervalle de choix du joueur, si nov_maxValuePossible = 20 ils devront saisir entre 0 et 9 inclus

	nov_enableLimit = 0; //Enable a limit for the lotery (IF you don't want someone to win 15Billion by luck)
	nov_jackpotLimit = 20000000; //The lotery can't give more than that 

};