# README

**REST Users API**
----
This is a Simple Ruby on Rails API where you can see how to create a REST API using just a model. Here you can find a basic controller made using TDD as development tool. You can find a list of endpoints available down below. Also, if you use POSTMAN, you can download and import `REST-users-API.postman_collection.json` file to save time building the requests from stratch. You can find it in the root folder

### **List users**

    /users

* **Method:**
  
  `GET`

* **Success Response:**
  * **Code:** 200 <br />
    **Content:** `[
    {
        "id": 1,
        "full_name": "Juan Gonzalez",
        "date_of_birth": "2000-10-02",
        "sex": "male",
        "image_url": "https://www.adslzone.net/app/uploads-adslzone.net/2019/04/imagen.jpg",
        "created_at": "2021-06-05T17:40:15.581Z",
        "updated_at": "2021-06-05T17:40:15.581Z"
    }
]`
* **Sample Call:**
* _{baseURL}/users_

### **Show user**

    /users/:id

* **Method:**
  
  `GET`

* **Success Response:**
  * **Code:** 200 <br />
    **Content:** `{
        "id": 1,
        "full_name": "Juan Gonzalez",
        "date_of_birth": "2000-10-02",
        "sex": "male",
        "image_url": "https://www.adslzone.net/app/uploads-adslzone.net/2019/04/imagen.jpg",
        "created_at": "2021-06-05T17:40:15.581Z",
        "updated_at": "2021-06-05T17:40:15.581Z"
    }`
* **Sample Call:**
  _{baseURL}/users/:id_
  
### **Create user**

    /users

* **Method:**
  
  `POST`
* **Data Params**

  `{
    "user": {
        "full_name": "Juan Gonzalez",
        "sex": "male",
        "date_of_birth": "2000-10-02",
        "image_url": "https://www.adslzone.net/app/uploads-adslzone.net/2019/04/imagen.jpg"
    } 
}`

* **Success Response:**
  * **Code:** 200 <br />
    **Content:** 
    ```
      {
          "id": 1,
          "full_name": "Juan Gonzalez",
          "date_of_birth": "2000-10-02",
          "sex": "male",
          "image_url": "https://www.adslzone.net/app/uploads-adslzone.net/2019/04/imagen.jpg",
          "created_at": "2021-06-05T17:40:15.581Z",
          "updated_at": "2021-06-05T17:40:15.581Z"
      }
      ```
* **Sample Call:**
    _{baseURL}/users/:id_
