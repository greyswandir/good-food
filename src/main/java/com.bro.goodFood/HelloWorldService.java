/**
 * Created with IntelliJ IDEA.
 * User: Family
 * Date: 24.05.13
 * Time: 1:01
 * To change this template use File | Settings | File Templates.
 */
package com.bro.goodFood;

public class HelloWorldService  {

    public static void main(String args[]) {
        HelloWorldService service = new HelloWorldService();

        System.out.println(service.getSalutation());
    }

    public String getSalutation() {
        return "Hello World from Java!";
    }

}
