# 5xTraining ASTRO Camp 訓練教材

## 關於這份訓練教材

這份文件是五倍紅寶石 [ASTRO Camp](https://astro.5xruby.tw) 學員的補充訓練教材，用以建立學員對 Ruby on Rails 以及各種前、後端技術的基礎知識。原始版本為[日本株式会社万葉](https://github.com/everyleaf/el-training)編撰。

在本份教材中會有下列兩種角色：

- 學員（mentee）：本份教材的使用者。
- 導師（mentor）：對學員進行教學、並適時的給予指導及建議，同時也負責帶領新人討論並決定需求與規格等。

## 目錄

- [後端 - Ruby on Rails（T101）](T101.md)

## License

本份教材是以 [Creative Commons 姓名標示-非商業性-相同方式分享 4.0 國際](https://creativecommons.org/licenses/by-nc-sa/4.0/deed.zh_TW) 授權。

[![Creative Common License](https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png)](https://creativecommons.org/licenses/by-nc-sa/4.0/deed.zh_TW)

## Ruby & Rails Version
- Ruby: `2.7.1`
- Rails: `6.0.3.5`

## ER Diagram
![ERD](https://i.imgur.com/T8y3rJJ.jpg)

## Table Schema
- users
  |Column|Data Type|
  |--|--|
  |id|int|
  |name|str|
  |email|str|
  |password|str|
  |role|str|

- Tasks
  |Column|Data Type|
  |--|--|
  |id|int|
  |title|str|
  |description|text|
  |start_time|datetime|
  |end_time|datetime|
  |priority|int|
  |status|int|
  |user_id|int|

- Tags
  |Column|Data Type|
  |--|--|
  |id|int|
  |name|str|

- Tasks_tags
  |Column|Data Type|
  |--|--|
  |id|int|  
  |tag_id|int|  
  |task_id|int|  
