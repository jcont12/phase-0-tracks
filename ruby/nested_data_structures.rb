

arizona_cardinals = {
	offense: {
		QB: "Carson Palmer",
		WR1: "Larry Fitzgerald",
		WR2: "John Brown",
		RB: "David Johnson",
		TE: "Jermaine Gresham",
		OL: [
		  "Humphries",
		  "Iupati",
		  "Shipley",
		  "Veldheer"
		],
	},
	defense: {
	 	DL: [
	 	  "Frostee",
	 	  "mauro",
	 	  "Nkemdiche"
	 	],
	 	LB: {
	 		OLB: [
	 		  "Golden",
	 		  "Jones"
	 		],
	 		ILB: [
	 		  "Buc",
	 		  "Dansby"
	 		]
	 	},
	 	CB1: "PP",
	 	CB2: "Bethel",
	 	SS: "Bethea",
	 	FS: "Mathieu", 
	 }
}

arizona_cardinals[:offense][:OL][3]

arizona_cardinals[:offense][:OL].insert(3,"Boehm")

arizona_cardinals[:defense][:LB][:ILB][0] = "Bucannon"

arizona_cardinals[:defense][:FS]