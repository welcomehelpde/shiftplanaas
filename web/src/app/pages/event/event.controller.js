function EventController(uiCalendarConfig) {
  'ngInject';

  this.shifts = [];
  this.shiftSources = [this.shifts];

  this.eventClick = () => {
    console.log('event clicked');
  };

  this.dayClick = (date) => {
    const event = {
      title: 'IhVent',
      start: date
    };

    this.shifts.push(event);
  };

  this.calendarConfig = {
    editable: true,
    height: 'auto',
    header:{
      left: 'month,agendaWeek,agendaDay',
      center: '',
      right: 'today prev,next'
    },
    eventClick: this.eventClick,
    dayClick: this.dayClick
  };
}

export default EventController;
