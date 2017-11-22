# README

Resource generator
```
rails g resource Portfolio title:string subtitle:string body:text main_image:text thumb_image:text
```

Data for seed
```
rails c
> Blog.create!(title: "asdf", body: "a body")
```

Runs migrations and sets up database fresh with seeds file
```
rails db:setup
```

At this point mostly looking at this link: 
```
http://localhost:3000/pages/home
```