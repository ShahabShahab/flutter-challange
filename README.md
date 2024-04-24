Task Description
----------------
The volleyball Federation decided to use an online selling platform for the next season, and our company has been chosen for implementing that.


Create a Flutter application with two main pages:

**1. Login Page:**
This page allows users to authenticate themselves into the application. 
Users should be able to input their credentials, such as username and password, and submit them for validation.
Upon successful authentication, users should be directed to the second page.

**2. Stadium Seats Page:**
After successful login, users are directed to this page where they can view the available seats for a stadium event.
The page should display a layout of seats arranged in rows and columns representing the stadium seating.
Each seat should be visually distinguishable and display its status (e.g., available or reserved).
Users should be able to select seats if they are available. Please refer to the design provided as a sample.


### API Standard

* `GET /map`

‍‍‍response body sample: ['m213', 'm654', 'm63', 'm6888']


Get the list of map ids.
You should use this endpoint to get the list and choose one of the stadium maps randomly

* `GET /map/<map_id>`

Get map detail and show seats


response body sample:
[
   [0 0 1 0]
   [0 1 0 0]
   [1 1 1 1]
   [1 1 1 1]
]


in the response: 1 means reserved, and 0 means seat available to buy


* `POST /map/<map_id>/ticket`


request body sample:
{
x: 2,
y: 1
}

Buy tickets
`x` and `y` are Seat coordinates in the request


Suppose the backend APIs are concurrently in the development process. So mock APIs in some way clean to continue your work.

### Implementation details


Try to write your code as **reusable** and **readable** as possible.
Also, don't forget to **document your code** and clear the reasons for all your decisions in the code.

It is more valuable to us that the project comes with unit tests.

Don't forget that many stadium seats are available (around 100k) so try to implement your code in a way that could show it smoothly.
If your solution does not sample enough for implementing fast, you can just describe it in your documents.

Please fork this repository and add your code to that. Don't forget that your commits are so important.
So be sure that you're committing your code often with a proper commit message.


![Simulator Screenshot - iPhone 14 Pro Max - 2024-04-24 at 07 36 33](https://github.com/ShahabShahab/flutter-challange/assets/26481284/a72027d9-ebae-45e7-b9fd-2943247cfee0)

![Simulator Screenshot - iPhone 14 Pro Max - 2024-04-24 at 07 36 37](https://github.com/ShahabShahab/flutter-challange/assets/26481284/57dfcc76-8952-41fb-93fe-40b5d3936d39)

![Simulator Screenshot - iPhone 14 Pro Max - 2024-04-24 at 07 36 44](https://github.com/ShahabShahab/flutter-challange/assets/26481284/4acb74a0-32d2-4394-92d3-4b7963c1161a)

![Simulator Screenshot - iPhone 14 Pro Max - 2024-04-24 at 07 37 51](https://github.com/ShahabShahab/flutter-challange/assets/26481284/798a92aa-a257-489b-a9db-f4da8de383a0)
