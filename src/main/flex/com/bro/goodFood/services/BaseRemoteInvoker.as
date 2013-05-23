/**
 * Created with IntelliJ IDEA.
 * User: oleg
 * Date: 22.05.13
 * Time: 1:34
 * To change this template use File | Settings | File Templates.
 */
package bro.goodFood.services {
import mx.controls.Alert;
import mx.rpc.events.FaultEvent;
import mx.rpc.events.ResultEvent;
import mx.rpc.remoting.RemoteObject;

public class BaseRemoteInvoker {

    public var ro:RemoteObject;


    public function BaseRemoteInvoker() {
        ro = new RemoteObject();
        ro.destination = "HelloWorldService";
    }

    public function runHelloWorld():void {
        function onResult(event:ResultEvent):void {
            ro.removeEventListener(ResultEvent.RESULT, onResult);
            ro.removeEventListener(FaultEvent.FAULT, onFault);

            Alert.show(event.result.toString());
        }

        function onFault(event:FaultEvent):void {
            ro.removeEventListener(ResultEvent.RESULT, onResult);
            ro.removeEventListener(FaultEvent.FAULT, onFault);

            Alert.show(event.fault.toString());
        }

        ro.addEventListener(ResultEvent.RESULT, onResult);
        ro.addEventListener(FaultEvent.FAULT, onFault);

        ro.getSalutation();
    }

}
}
