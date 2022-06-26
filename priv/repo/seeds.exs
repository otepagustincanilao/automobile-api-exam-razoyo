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
    currency: "PHP",
    img_url:
      "https://imgcdn.zigwheels.ph/large/gallery/exterior/11/2760/honda-civic-2021-front-angle-low-view-575715.jpg"
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
    currency: "PHP",
    img_url:
      "https://imgcdn.zigwheels.ph/large/gallery/exterior/30/1943/toyota-vios-front-side-view-409037.jpg"
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
    currency: "PHP",
    img_url:
      "https://imgcdn.zigwheels.ph/large/gallery/exterior/30/1110/toyota-fortuner-front-angle-low-view-275442.jpg"
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
    currency: "PHP",
    img_url:
      "https://imgcdn.zigwheels.ph/large/gallery/exterior/30/2014/toyota-camry-front-angle-low-view-860620.jpg"
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
    currency: "PHP",
    img_url:
      "https://imgcdn.zigwheels.ph/large/gallery/exterior/11/2108/honda-accord-front-angle-low-view-235371.jpg"
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
    currency: "PHP",
    img_url:
      "https://imgcdn.zigwheels.ph/large/gallery/exterior/21/499/mazda-3-sedan-front-side-view-847321.jpg"
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
    currency: "PHP",
    img_url:
      "https://imgcdn.zigwheels.ph/large/gallery/exterior/24/1643/mitsubishi-montero-sport-front-angle-low-view-475965.jpg"
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
    currency: "PHP",
    img_url:
      "https://imgcdn.zigwheels.ph/large/gallery/exterior/24/2953/mitsubishi-xpander-2022-front-side-view-243429.jpg"
  },
  %{
    make: "LAMBORGHINI",
    model: "Huracan",
    series: "Huracan SG2020",
    year: "2020",
    slug: "lamborghini-huracan-2020",
    seat_capacity: 5,
    color: "Yellow and Black",
    miles_per_gallon: 42,
    transmission: "Manual",
    fuel_type: "Gas",
    price: 15_500_000,
    currency: "PHP",
    img_url:
      "https://imgcdn.zigwheels.ph/large/gallery/exterior/51/478/lamborghini-huracan-front-angle-low-view-663613.jpg"
  },
  %{
    make: "LAMBORGHINI",
    model: "Aventador",
    series: "Aventador SG2020",
    year: "2020",
    slug: "lamborghini-aventador-2020",
    seat_capacity: 5,
    color: "Green and Black",
    miles_per_gallon: 46,
    transmission: "Manual",
    fuel_type: "Gas",
    price: 25_500_000,
    currency: "PHP",
    img_url:
      "https://imgcdn.zigwheels.ph/large/gallery/exterior/51/2018/lamborghini-aventador-front-angle-low-view-196746.jpg"
  }
]

cars
|> Enum.map(&CarCotext.create/1)
