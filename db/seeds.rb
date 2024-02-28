r1 = Role.create({ name: 'Regular', description: 'Can read articles' })
r2 = Role.create({ name: 'User', description: 'Can read and create articles. Can update and destroy own articles' })
r3 = Role.create({ name: 'Admin', description: 'Can perform any CRUD operation on any resource' })

u1 = User.create({ name: 'Sally', email: 'sally@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa', role_id: r1.id })
u2 = User.create({ name: 'test', email: 'test@gmail.com', password: '12345678', password_confirmation: '12345678', role_id: r2.id })
u3 = User.create({ name: 'Kev', email: 'kev@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa', role_id: r2.id })
u4 = User.create({ name: 'nutan', email: 'nutan@gmail.com', password: '12345678', password_confirmation: '12345678', role_id: r3.id })

i1 = Article.create({ name: 'First Article', description: 'Stylish shades',  user_id: u2.id })
i2 = Article.create({ name: 'Second Article', description: 'Expensive timepiece', user_id: u2.id })
i3 = Article.create({ name: 'Third Article', description: 'Classy knitwear',user_id: u3.id })
i4 = Article.create({ name: 'Fourth Article', description: 'Cosy footwear',user_id: u3.id })
