# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
- [ ] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)   
    - **Users can add movies to their Watchlist**
- [ ] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
    - **Users can create `comments` to movies on their watch list**
- [ ] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
    - **Can you `comments` to movies on their watch list**
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
    - **Do we need validation on search field?**
- [ ] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
    - **Scoped filtering with [has_scope](https://github.com/plataformatec/has_scope) or [Filterific](https://github.com/jhund/filterrific) gem**
- [x] Include signup (how e.g. *Devise*)
- [x] Include login (how e.g. *Devise*)
- [x] Include logout (how e.g. *Devise*)
- [x] Include third party signup/login (how e.g. Devise/OmniAuth) **Added GitHub**
- [x] Include nested resource show or index (URL e.g. users/2/recipes)
    - **Display users watchlist**
- [ ] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
    - **Add comment field for each movie in `WatchList`**
    - **Might add multiple WatchList**
- [ ] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [x] Views use partials if appropriate
