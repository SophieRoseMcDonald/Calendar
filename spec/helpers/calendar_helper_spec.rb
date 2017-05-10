require 'rails_helper'

RSpec.describe CalendarHelper, type: :helper do
  describe '#calendar' do
    it 'returns an Event' do
      expect(helper.calendar.name).to eq("test event")
    end
  end

  describe '#events_for_day' do
    let(:event) { Event.create(name: "test event")}

    it 'returns a list of events' do
      expect(helper.events_for_day).to include(event)
    end
  end
end
