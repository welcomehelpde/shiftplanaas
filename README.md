# Shiftplanaas

## Idea
* As simple as doodle at it's simplest.
* Different from doodle: for shifts goal is to spread evenly, not to agree on one date + time.
* A bit like creating a meeting in a apple calendar, or outlook; very calendar centric
* no login
* no personal data

## Workflow / Lifecycle

1. Organiser creates event with shifts 
   gets 2 URLs: One to send per e.g. email, one for administration
2. sends it per their favorite tool to participants
3. participants choose shifts
4. organiser changes something, which does not invalidate the rest
5. shiftplan is exported as csv, printed as html
5. event takes place
6. gets deleted after 1 month <- optional?

## interface frontend / backend

    POST /api/events/ - create event - returns {id: 'abc-123'}
    GET /api/events/abc-123 - get event
    PUT /api/events/abc-123 - update event
    DELETE /api/events/abc-123 - delete event

Data structure of an event: https://github.com/welcomehelpde/shiftplanaas/blob/master/db/event_1.json
The most general object is an *event*. It has a name, and consists of one to many:
*shift series*. An shift series generally will be a one time thing and have length 1, e.g. "Sell tickets". Then, you  can think of it as a shift. But it may be a series, like "every Tuesday for the next 4 weeks". In this case, it consists of four *shift*. 

Storage: First implemented is MySQL, some document store will be added

## Frameworks

* fullcalendar for frontend
* lumen for backend

## Keep it Simple, Stupid

* no archiving - just delete at some point
* no future - at least not more than one year
* no versioning - a changed event/shift series/shift overwrites, the old version is lost
* no safeguard against lost urls - sorry.

