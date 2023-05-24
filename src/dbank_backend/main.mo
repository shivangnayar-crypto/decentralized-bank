import Debug "mo:base/Debug";
import Nat "mo:base/Nat";
import Int "mo:base/Int";
import Time "mo:base/Time";
import Float "mo:base/Float";


actor DBank{
 stable var currentValue: Float= 300;
  currentValue:=300;

stable var startTime = Time.now();
startTime := Time.now();


Debug.print(debug_show(startTime));


  

  //Debug.print(debug_show(currentValue));

  public func topup(amount:Float){
    currentValue += amount;
    Debug.print(debug_show(currentValue));
  };
  public func withdrwal(amount:Float){
    let tempValue: Float = currentValue - amount;
    if(tempValue >= 0){
    currentValue -=amount;
    
    Debug.print(debug_show(currentValue));
    }
    else Debug.print(debug_show("amount too large ,current value  less than zero"))
  };

  public func compound(){
    let currenttime = Time.now();
    let timeElapsedNS = currenttime - startTime;
    let timeElapsedS = timeElapsedNS/1000000000;
    currentValue:= currentValue *(1.01 ** Float.fromInt(timeElapsedS));
    startTime := currenttime;
  };

  public query func checkbalance(): async Float{
    return currentValue;
  }
  //topup();
}