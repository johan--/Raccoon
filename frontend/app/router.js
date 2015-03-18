import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {

  // under site namespace
  this.route('site/about', { path: '/about' });
  this.route('site/index', { path: '/' });


  // under admin namespace
  this.route('admin/dashboard', { path: '/admin' });

});

export default Router;
