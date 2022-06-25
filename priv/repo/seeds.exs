alias AutoDealApi.Repo
alias AutoDealApi.Contexts.Car, as: CarCotext

cars = [
  %{
    make: "HONDA",
    model: "Civic",
    series: "Civic-SE2022",
    year: "2022",
    slug: "honda-civic-2022",
    seat_capacity: 5,
    color: "Navy Blue",
    miles_per_gallon: 30,
    transmission: "Manual",
    fuel_type: "Gas",
    price: 1_700_000.50,
    currency: "PHP"
  },
  %{
    make: "TOYOTA",
    model: "Vios",
    series: "Vios SE2021",
    year: "2021",
    slug: "toyota-vios-2021",
    seat_capacity: 5,
    color: "Maroon",
    miles_per_gallon: 31,
    transmission: "Manual",
    fuel_type: "Gas",
    price: 850_000.50,
    currency: "PHP"
  },
  %{
    make: "TOYOTA",
    model: "Fortuner",
    series: "Fortuner S2022",
    year: "2022",
    slug: "toyota-fortuner-2022",
    seat_capacity: 8,
    color: "Black Mica",
    miles_per_gallon: 35,
    transmission: "Automatic",
    fuel_type: "Diesel",
    price: 2_450_000.50,
    currency: "PHP"
  },
  %{
    make: "TOYOTA",
    model: "Camry",
    series: "Camry 2NDGen2022",
    year: "2022",
    slug: "toyota-camry-2022",
    seat_capacity: 5,
    color: "Metal Stream Metallic",
    miles_per_gallon: 33,
    transmission: "Automatic",
    fuel_type: "Gas",
    price: 2_370_000,
    currency: "PHP"
  },
  %{
    make: "HONDA",
    model: "Accord",
    series: "Accord 3rdGen2020",
    year: "2020",
    slug: "honda-Accord-2020",
    seat_capacity: 5,
    color: "Light Metallic",
    miles_per_gallon: 29,
    transmission: "Automatic",
    fuel_type: "Gas",
    price: 1_100_000,
    currency: "PHP"
  },
  %{
    make: "MAZDA",
    model: "Mazda 3",
    series: "Mazda3 XDT2022",
    year: "2022",
    slug: "mazda-3-2020",
    seat_capacity: 5,
    color: "Dark Alloy",
    miles_per_gallon: 31,
    transmission: "Automatic",
    fuel_type: "Gas",
    price: 1_350_000,
    currency: "PHP"
  },
  %{
    make: "MITSUBISHI",
    model: "Montero Sport",
    series: "MNTRO SH2022",
    year: "2022",
    slug: "mitsubishi-montero-2022",
    seat_capacity: 5,
    color: "Black Matte",
    miles_per_gallon: 40,
    transmission: "Automatic",
    fuel_type: "Diesel",
    price: 1_600_000,
    currency: "PHP"
  },
  %{
    make: "MITSUBISHI",
    model: "XPander",
    series: "XPNDR SG2022",
    year: "2022",
    slug: "mitsubishi-xpander-2022",
    seat_capacity: 5,
    color: "Yellow Matte",
    miles_per_gallon: 38,
    transmission: "Automatic",
    fuel_type: "Gas",
    price: 1_200_000,
    currency: "PHP"
  },
  %{
    make: "LAMBORGHINI",
    model: "Gallardo",
    series: "Gallardo SG2014",
    year: "2014",
    slug: "lamborghini-gallardo-2014",
    seat_capacity: 5,
    color: "Yellow and Black",
    miles_per_gallon: 42,
    transmission: "Manual",
    fuel_type: "Gas",
    price: 10_500_000,
    currency: "PHP"
  },
  %{
    make: "LAMBORGHINI",
    model: "Murcielago",
    series: "Murcielago SG2016",
    year: "2016",
    slug: "lamborghini-murcielago-2016",
    seat_capacity: 5,
    color: "Green and Black",
    miles_per_gallon: 46,
    transmission: "Manual",
    fuel_type: "Gas",
    price: 15_500_000,
    currency: "PHP"
  }
]

cars
|> Enum.map(&CarCotext.create/1)
