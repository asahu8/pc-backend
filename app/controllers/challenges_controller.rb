class ChallengesController < ApplicationController

  def specific_pc
    enrollmentFlag = false
    sleep(3000)
    render json: (
      {
        "pcInstanceGuid": "19f0ae4b-cb38-449a-a5e7-822f1342ce36",
        "habitLabel": "form your habit",
        "habitContent": "Practice deep breathing daily, week by week, until you reach your goal. Keep it up until it sticks!",
        "description": "Take deep breaths to reduce your stress and promote healing!",
        "name": "Breathe",
        "duration": "WEEKLY",
        "subTitle": "Earn 0 points daily",
        "streakDescription": "Week 1",
        "category": {
          "name": "RELAX"
        },
        "dailyActivityImageUrl": "https://res.cloudinary.com/castlight-health-dev/image/upload/v1583410767/personal_challenges/breathe/daily_activities.svg",
        "iconUrl": "https://res.cloudinary.com/castlight-health-dev/image/upload/v1582542190/personal_challenges/breathe/icon.svg",
        "backgroundImageUrl": "https://res.cloudinary.com/castlight-health-dev/image/upload/v1583300247/personal_challenges/breathe/background.svg",
        "catalogueActiveImageUrl": " https://res.cloudinary.com/castlight-health-dev/image/upload/v1583470135/personal_challenges/breathe/catalogue_active.svg",
        "catalogueInactiveImageUrl": "https://res.cloudinary.com/castlight-health-dev/image/upload/v1583149264/personal_challenges/breathe/catalogue_inactive.svg",
        "onBoardingImageUrl": "https://res.cloudinary.com/castlight-health-dev/image/upload/v1584955405/personal_challenges/breathe/onboarding.svg",
        "progressImageUrl": "https://res.cloudinary.com/castlight-health-dev/image/upload/v1585042473/personal_challenges/breathe/progress.svg",
        "challengeRenewText": "Make this habit really stick. It usually takes 6-10 weeks to create a habbit. The more rounds of Breathe you do, the easier it will become.",
        "guidelinesTitle": "Set Goals",
        "guidelinesSubTitle": "SUGGESTED GOALS",
        "guidelinesDescription": "Take small steps to grow your habit into a meditation practice. Or, keep your goals small and still benefit from taking deep breaths.",
        "anchorTemplate": "When I {phrase}I will practice deep breathing.",
        "anchorPlaceholder": "wake up",
        "guidelines": [],
        "anchorExampleTemplates": [ {
          "id": "de465cb5-2f23-4156-8041-4f8fa575fb62",
          "createdDate": "2020-04-10T06:30:15.000+0000",
          "modifiedDate": "2020-04-10T06:30:15.000+0000",
          "exampleText": "<strong>When I</strong> finish my breakfast, <strong>I will</strong> practice deep breathing.",
          "deleted": false
        }, {
          "id": "3cf1e8a2-c7fd-42b8-a75d-66b13b79f96b",
          "createdDate": "2020-04-10T06:30:15.000+0000",
          "modifiedDate": "2020-04-10T06:30:15.000+0000",
          "exampleText": "<strong>When I</strong> buckle my seatbelt, <strong>I will</strong> practice deep breathing.",
          "deleted": false
        }, {
          "id": "16534e8f-7042-40c6-a4ae-cd161653779c",
          "createdDate": "2020-04-10T06:30:15.000+0000",
          "modifiedDate": "2020-04-10T06:30:15.000+0000",
          "exampleText": "<strong>When I</strong> get ready for bed, <strong>I will</strong> practice deep breathing.",
          "deleted": false
        }, {
          "id": "437c1104-6c24-41a2-87b6-85df9f3faf4f",
          "createdDate": "2020-04-10T06:30:15.000+0000",
          "modifiedDate": "2020-04-10T06:30:15.000+0000",
          "exampleText": "<strong>When I</strong> ride the train, <strong>I will</strong> practice deep breathing.",
          "deleted": false
        } ],
        "incentivePoints": 0,
        "userEnrolledToPc": false,
        "streakCount": 1,
        "pcRenewable": false,
        "pcRenewableDays": 0,
        "pcCatalogueCard": false
      }
    )
    end

    def get_instance
      obj = {
        "id": "0b0e4e0b-c492-4611-953a-0477ad8d9f1b",
          "startDate": "2020-01-01",
          "endDate": "2022-01-01",
          "personalChallenge": {
              "id": "f2358441-8d76-46bf-9729-1833d0b69141"
          },
          "mappedSegments": [
              {
                  "id": "a0ddb806-e43c-4f93-b90e-c411db9394cc",
                  "employerKey": "abbott",
                  "eligibility": "{employerKey: abbott, normalizedRelationship: [SELF]}"
              }
          ],
          "employerKey": "castlight"
      }
      render json: obj
    end

    def instances
      instance = {
        "id": "679d335b-0c6c-4e87-b100-176fd57e1c9a",
        "personalChallenge": {
          "id": "fcec041b-1003-4616-b907-619d0e257d1e",
          "name": "Breathe",
          "category": {
            "name": "RELAX"
          }
        },
        "startDate": "2020-01-10",
        "endDate": "2020-05-20",
        "employerKey": "castlight",
        "modified_by": "alex",
        "modified_date":  "Mon Mar 30 07:36:38 IST 2020"
      }

      habits = ['Drink Water', 'Breathe', 'Make Coffee', 'Read book', 'Meditate', 'Eat Veggies', 'Sleep early', 'Exercise', 'Jogging', 'Eat fruits', 'Feel Grateful', 'stretch', 'Connect', 'Feel Grateful' ]
      categories = %w(health relax foodHabit knowledge mindful knowledge)
      instances = []
     20.times do
      newHabit =
      newInstance = instance.merge({
        "personalChallenge": {
          "id" => "fcec041b-1003-4616-b907-619d0e257d1e",
          "name" => habits.sample,
          "category" => {
            "name" => categories.sample
          }
        },
        "endDate" => ( Date.new(2020, 3, 1) + (1..90).to_a.sample).to_s
      })
      instances.push(newInstance)
      end
      render json: ( instances )
    end
end