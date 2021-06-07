**REST Users API**
----
This is a simple Ruby on Rails API made to create, list and show users. It uses REST API principles. Here you can find a basic controller made using TDD approach. You can find a list of endpoints availables down below. Also, if you use POSTMAN, you can download and import `REST-users-API.postman_collection.json` file to save time building the requests from stratch. You can find it in the root folder.

## Install

### Clone the repository

```shell
git clone git@github.com:Jsscrdng/REST-users-api.git
cd REST-users-api
```

### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 2.6.3`

If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```shell
rbenv install 2.6.3
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler):

```shell
bundle install
```

### Initialize the database

```shell
rails db:create db:migrate
```

## Serve

```shell
rails s
```


**Usage**
----

### **List users**

    /users

* **Method:**
  
  `GET`

* **Success Response:**
  * **Code:** 200 <br />
    **Content:** ```[
        {
            "id": 1,
            "full_name": "Juan Gonzalez",
            "date_of_birth": "2000-10-02",
            "sex": "male",
            "image_url": "https://www.adslzone.net/app/uploads-adslzone.net/2019/04/imagen.jpg",
            "created_at": "2021-06-05T17:40:15.581Z",
            "updated_at": "2021-06-05T17:40:15.581Z"
        },
        {
            "id": 2,
            "full_name": "Marcos Perez",
            "date_of_birth": "1980-10-02",
            "sex": "male",
            "image_url": "https://www.adslzone.net/app/uploads-adslzone.net/2019/03/imagen.jpg",
            "created_at": "2021-06-05T17:42:10.581Z",
            "updated_at": "2021-06-05T17:42:10.581Z"        }
    ]```
* **Sample Call:**
* _{baseURL}/users_

### **Show user**

    /users/:id

* **Method:**
  
  `GET`

* **Success Response:**
  * **Code:** 200 <br />
    **Content:** ```{
        "id": 1,
        "full_name": "Juan Gonzalez",
        "date_of_birth": "2000-10-02",
        "sex": "male",
        "image_url": "https://www.adslzone.net/app/uploads-adslzone.net/2019/04/imagen.jpg",
        "created_at": "2021-06-05T17:40:15.581Z",
        "updated_at": "2021-06-05T17:40:15.581Z"
    }```
* **Sample Call:**
  _{baseURL}/users/:id_
  
### **Create user**

    /users

* **Method:**
  
  `POST`
* **Data Params**

  ```{
        "user": {
            "full_name": "Juan Gonzalez",
            "sex": "male",
            "date_of_birth": "2000-10-02",
            "image_url": "https://www.adslzone.net/app/uploads-adslzone.net/2019/04/imagen.jpg"
        } 
    }```

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
