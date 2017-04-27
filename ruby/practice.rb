first = "name"

form = {
	first => "Jorge",
	address: "",
	email: "",
	phone: "",
	shade_blue: "",
	wallpaper: [],
	ombre: [],
	hired: "",
}


form[:address] = "San Gonzalo"
form[:email] = "jcont15@yahoo.com"
form[:phone] = 33234234432
form[:shade_blue] = "indigo"
form[:wallpaper].insert(0,"yes", "no")

 first + form[:address]

form