# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version
  3.0.0
- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

THe frond end: Destroying (deleting) articles
REST - Representational state transfer -mapping HTTP verbs (get, post, put/patch, delete) to CRUD actions
resources provides REST-ful routes to Rails resources
show, index, new, create, edit, update, destroy.

DRY dode: do not repeat yourself

- re-facting
- extract away the redundancies in code

CRUD

- rails generate scaffold Article title:string description:text
- rails generate scaffold User username:string
- rails db:migrate
- rails routes --expanded
- rails generate migration create_articles
- rails db:migrate

rails console CRUD

- rails console
- Article.create(title: '', description: '')
- article = \_
- article.save
- Article.create(title: '', description: '').save
- Article.find(3)
- Article.first
- Article.last
- article = Article.find(3)
- article.title
- article.description
- article.description = ''
- article.title = ''
- article.destroy

database validate
in article.rb :
validates :title, presence: true, length: { minimum: 6, maximum: 100 }
validates :description, presence: true, length: { minimum: 10, maximum: 300 }

one to many associations

- rails generate scaffold User username:string
- rails console
- User.create(username: " ")
- User.create(username: " ")
- quit
- rails generate migration add_user_id_to_articles
- add_column :articles, :user_id, :int
- has_many :articles
- belongs_to :user
- rails console
- user_1 = User.first
- article = Article.last
- user_1.articles << article
- Article.create(title: "", description: "", user_id: user_1.id)
- Article.create(title: "", description: "", user: user_1)
- user_1.articles.build(title: '', description: '')
- user_1.articles
