
require('Utils');
defineClass("ViewController", {



tableView_didSelectRowAtIndexPath: function(tableView, indexPath) {
    tableView.deselectRowAtIndexPath_animated(indexPath, YES);
    
   // Utils.alertWithTitle_message("", self.dataArray().objectAtIndex(3));
    
    
}
            })
