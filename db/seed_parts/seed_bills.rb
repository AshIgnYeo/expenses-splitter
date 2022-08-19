def seed_bills
  event = Event.first

  Bill.create(
    name: 'Dinner at some spanish place',
    gst: 7,
    service_charge: 10,
    event:
  )

  Bill.create!(
    name: 'Drinks at some bar',
    gst: 7,
    service_charge: 10,
    event:
  )

  Bill.create!(
    name: 'Drinks at another bar',
    gst: 7,
    service_charge: 10,
    event:
  )
end
