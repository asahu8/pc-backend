class EventsController < ApplicationController

  def index
    render json: ( {
      status: 200,
      data: [
        { id: 1, name: "Hearing Aids", date: "2020-02-10", createdBy: "ajays", commentsCount: 10 },
        { id: 2, name: "Books to Orphan age", date: "2020-01-10", createdBy: "mmuray", commentsCount: 20 },
        { id: 3, name: "Mountain Biking", date: "2020-05-10", createdBy: "alexh", commentsCount: 30 },
        { id: 4, name: "Summer camp", date: "2020-07-10", createdBy: "rberger", commentsCount: 12 }
      ]
    }
    );
  end

  def event_cards
    render json: (
      {
        status: 200,
        data: [
          { cardType: "past", cardName: "past events", eventCount: 5 },
          { cardType: "future", cardName: "future events", eventCount: 15 }

        ]
      }
    )
  end
end
