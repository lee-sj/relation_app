# README


### Heroku deploy setting DB

```
# must login status

$ heroku restart

$ heroku pg:reset DATABASE

$ heroku run rails db:migrate

$ heroku run rails db:seed

```

검색해볼 명령어 
rails g migration add_role_to_profiles role:string

글로벌 언셋 하는 방법
git config --global --unset-all user.name
test test

db drop 없이 있는 테이블을 날리는 방법 
rails drop table (검색)
Droptable 

rails db:rollback << 마지막 마이그레이션 전상황으로 넘어감

프로젝트 업데이트 진행중
