import Easings from './easing';



export default class SCROLL{


  /**
   * Smoothly scrolls to a given Y position using Easing.Swing. It'll run a
   * callback upon finishing.
   * @param {number} y Offset of the page to scroll to.
   * @param {number} duration Duration of the animation. 500ms by default.
   * @param {function} cb Callback function to call upon completion.
   */
   static scrollTo(y, duration = 500, cb = () => {}) {

     const scrollable_container = document.querySelector('#webslides');
     const delta = y - scrollable_container.scrollTop;
     const startLocation = scrollable_container.scrollTop;
     const increment = 16;

     if (!duration) {
       scrollable_container.scrollTop = y;
       cb();
       return;
     }

     const animateScroll = (elapsedTime) => {
       elapsedTime += increment;
       const percent = Math.min(1, elapsedTime / duration);
       const easingP = Easings.swing(
         percent,
         elapsedTime * percent,
         y,
         delta,
         duration);

       scrollable_container.scrollTop = Math.floor(startLocation +
           (easingP * delta));

       if (elapsedTime < duration) {
         setTimeout(() => animateScroll(elapsedTime), increment);
       } else {
         cb();
       }
     };


    animateScroll(0)
   }
}
