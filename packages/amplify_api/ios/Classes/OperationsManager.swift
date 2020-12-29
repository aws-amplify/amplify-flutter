//
//  OperationsManager.swift
//  amplify_api
//
//  Created by Admin on 12/28/20.
//

import Foundation
import Amplify

public class OperationsManager{
    
    private static var operationsMap : [String:Operation] = [String:Operation]()
    
    public static func containsOperation(cancelToken : String) -> Bool{
        return operationsMap[cancelToken] != nil
    }
    
    public static func addOperation(cancelToken : String, operation : Operation){
        operationsMap[cancelToken] = operation
    }
    
    public static func removeOperation(cancelToken : String){
        if(containsOperation(cancelToken: cancelToken)){
            operationsMap.removeValue(forKey: cancelToken)
        }
    }
    
    public static func cancelOperation(cancelToken : String){
        operationsMap[cancelToken]?.cancel()
        removeOperation(cancelToken: cancelToken)
    }
}
