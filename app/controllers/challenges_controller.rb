class ChallengesController < ApplicationController
  def list
    enrollmentFlag = true
    render json: ({
    "programGuid": "34000000-0000-0000-0000-000000000000",
    "frequency": "MONTHLY",
    "name": "Breathe",
    "subTitle": "Earn 5 points daily",
    "week": "Week 1",
    "description": "Take deep breaths to reduce your stress and promote healing! When you breathe, you tell your body to calm down and relax.",
    "iconUrl": "https://chopra.com/sites/default/files/field/image/meditating-in-nature.jpg",
    "headerImageUrl": "/assets/img/personal-challenges/breathe_img.svg",
    "enrolledToChallenge": enrollmentFlag,

    "enrollmentStartDate": Date.today - 7,
    "enrollmentEndDate": Date.today,
    "week": "Week 1",
    "iconUrl": "",
    "challengeIcon": "assets/img/personal-challenges/breathing.svg",
    "backgroundImageUrl": "https://chopra.com/sites/default/files/field/image/meditating-in-nature.jpg",
    "progress": [{
      "date": Date.today - 6,
      "dataType": 'skip'
    },
    {
      "date": Date.today - 5,
      "dataType": ''
    },
    {
      "date": Date.today - 4 ,
      "dataType": 'skip'
    },
    {
      "date": Date.today - 3,
      "dataType": 'done'
    },
    {
      "date": Date.today - 2,
      "dataType": 'skip'
    },
    {
      "date": Date.today - 1,
      "dataType": 'done'
    },
    {
      "date": Date.today,
      "dataType": ''
    }
    ],
    "anchorTemplates": [
      {
        "templateText": "{When I} get ready for bed, {I will} practice deep breathing."
      },
      {
        "templateText": "{When I} finish my breakfast, {I will} practice deep breathing."
      },
      {
        "templateText": "{When I} ride the train, {I will} practice deep breathing."
      }
    ],

    "pcUiContentInfo": {
=begin
    "activateRemindersTitle": "WEEKLY",
    "activateRemindersDescription": "here is desc",
    "backgroundImageUrl": "background_image_url",
    "guidelinesTitle": "Make a Plan",
    "guidelinesSubTitle": "MY WEEKLY PLAN",
    "guidelinesDescription": "We recommend starting small and gradually increasing your time week by week. But of caurse, do what feels right.",
    "anchorTitle": "anchor_title",
    "anchorDescription": "anchor_description",
    "anchorImageUrl": "anchor_image_url",
    "remindersTitle": "reminders_title",
    "remindersDescription": "reminders_description",
    "activateRemindersImageUrl": "activate_reminders_image_url"
=end
    "name": "Breathe Challenge",
    "headerImageUrl": "https://chopra.com/sites/default/files/field/image/meditating-in-nature.jpg",
    "iconUrl": "assets/img/personal-challenges/breathing.svg",
    "activateRemindersTitle": "WEEKLY",
    "activateRemindersDescription": "here is desc",
    "backgroundImageUrl": "background_image_url",
    "guidelinesTitle": "Become Better",
    "guidelinesSubTitle": "Duration Guildline",
    "guidelinesDescription": "We recommend starting small and gradually increasing your time week by week. But of caurse, do what feels right.",
    "anchorTitle": "Write your statement",
    "anchorDescription": "Creating a promise statement is the secret to anchoring a new habit. This statement will include your habit and an \"Anchor\".",
    "anchorImageUrl": "assets/img/personal-challenges/tape.svg",
    "anchorExampleLink": "What is an Anchor? See examples.",
    "anchorExampleHeader": "What is an `Anchor`?",
    "anchorExampleSubHeader": "Examples:",
    "anchorExampleDescription": "An Anchor is an existing behavior that you already do consistently every day, like riding the train. When you create a statement that includes your anchor, you will be reminded to practice your habit every time you perform your anchor!",
    "anchorExampleTemplate": "When I {{wake up}}I will practice deep breathing.",
    "remindersTitle": "Set reminder",
    "remindersDescription": "Get a helpful nudge when it's time to practice your new habit.",
    "activateRemindersImageUrl": "activate_reminders_image_url"
    },
    "guidelines": [
      {
        "name": "Week 1",
        "description": "3 breaths"
      },
    {
    "name": "Week 2",
    "description": "5 breaths"
    },
    {
    "name": "Week 3 & 4",
    "description": "2 minutes"
    },
    {
    "name": "Week 5 & 6",
    "description": "3 minutes"
    },
    {
    "name": "Week 7 & 8",
    "description": "5 minutes"
    }
    ]
    })
  end
end
