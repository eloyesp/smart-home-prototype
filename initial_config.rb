DEVICE_TYPES_SEED = [
  { name: 'Samsung Audio',
    controls: [{
      name: 'Power',
      type: 'button'
    }, {
      name: 'Volume',
      type: 'slider'
    }, {
      name: 'Playlist',
      type: 'select',
      config: {
        options: [ 'Lonely Day', 'Soldier Side' ]
      }
    }]
  }, {
    name: 'Sony Audio',
    controls: [{
      name: 'Power',
      type: 'button'
    }, {
      name: 'Volume',
      type: 'slider'
    }, {
      name: 'Playlist',
      type: 'select',
      config: {
        options: [ 'Lonely Day', 'Soldier Side' ]
      }
    }]
  }, {
    name: 'Apple TV',
    controls: [{
      name: 'Power',
      type: 'button'
    }, {
      name: 'Brightness',
      type: 'slider'
    }, {
      name: 'Volume',
      type: 'slider'
    }]
  }, {
    name: 'Citrus Lights',
    controls: [{
      name: 'On/Off',
      type: 'button'
    }]
  }
]

DEVICE_TYPES_SEED.each do |device_type|
  controls = device_type[:controls].map! { |control| Control.create(control) }
  DeviceType.create device_type
end

Device.create name: "Bedroom Apple TV",
  type: DeviceType[3],
  ip: 'localhost'

Device.create name: "Livingroom Player",
  type: DeviceType[1],
  ip: 'localhost'

Device.create name: "Livingroom Lights",
  type: DeviceType[4],
  ip: 'localhost'
