# ZJLScalableTableViewControllerExample
If you want to use a table view with a scalable header, use this!  
![Alt text](/ZJLScalableHeader.gif?raw=true "screen shot")  
How to use:   
1. Inherit your table view controller to the ZJLScalableTableViewController  
@interface ExampleViewController : ZJLScalableTableViewController  

@end  

2. Inside your view controller, add one line to the viewDidLoad method  
[self setHeaderWithImage:YourHeaderImage height:YourHeaderHight];  

That's it!
