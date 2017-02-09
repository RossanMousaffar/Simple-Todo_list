/*
 *  Licensed Materials - Property of IBM
 *  5725-I43 (C) Copyright IBM Corp. 2011, 2013. All Rights Reserved.
 *  US Government Users Restricted Rights - Use, duplication or
 *  disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
 */

/*******************************************************************************
 * Implementation code for procedure - 'procedure1'
 * 
 * 
 * @return - invocationResult
 */
 
var procedure1Statement = WL.Server.createSQLStatement("select todoPID , item from todoperso");
function getItems() {
	return WL.Server.invokeSQLStatement({
		preparedStatement : procedure1Statement,
		parameters : []
	});
}

var add1Statement = WL.Server.createSQLStatement("insert into todoperso (item) values (?)");

function addItems(item) {
		
	return WL.Server.invokeSQLStatement({
		preparedStatement : add1Statement,
		parameters : [item]
	});
}

var delete1Statement = WL.Server.createSQLStatement("delete from todoperso where todoPID=?");

function deleteItems(todoPID) {
		
	return WL.Server.invokeSQLStatement({
		preparedStatement : delete1Statement,
		parameters : [todoPID]
	});
}

/*******************************************************************************
 * Implementation code for procedure - 'procedure2'
 * 
 * 
 * @return - invocationResult
 */
 
var procedure2Statement = WL.Server.createSQLStatement("select todoPID , item from todoperso1");
function getItems2() {
	return WL.Server.invokeSQLStatement({
		preparedStatement : procedure2Statement,
		parameters : []
	});
}


var add2Statement = WL.Server.createSQLStatement("insert into todoperso1 (item) values (?)");

function addItems2(item) {
		
	return WL.Server.invokeSQLStatement({
		preparedStatement : add2Statement,
		parameters : [item]
	});
}


var delete2Statement = WL.Server.createSQLStatement("delete from todoperso1 where todoPID=?");

function deleteItems2(todoPID) {
		
	return WL.Server.invokeSQLStatement({
		preparedStatement : delete2Statement,
		parameters : [todoPID]
	});
}





function procedure2(param) {
	return WL.Server.invokeSQLStoredProcedure({
		procedure : "storedProcedure2",
		parameters : [param]
	});
}


/*******************************************************************************
 * Functions that correspond to JSONStore client operations
 * 
 */

var selectStatement = WL.Server.createSQLStatement("select toDoID, list from todo");

function getToDoAdapters() {
		
	return WL.Server.invokeSQLStatement({
		preparedStatement : selectStatement,
		parameters : []
	});
}

var addStatement = WL.Server.createSQLStatement("insert into todo (list) values (?)");

function addToDoAdapter(list) {
		
	return WL.Server.invokeSQLStatement({
		preparedStatement : addStatement,
		parameters : [list]
	});
}
	
var updateStatement = WL.Server.createSQLStatement("update todo set list=?");

function updateToDoAdapter(list) {
		
	return WL.Server.invokeSQLStatement({
		preparedStatement : updateStatement,
		parameters : [list]
	});
}

var deleteStatement = WL.Server.createSQLStatement("delete from todo where toDoID=?");

function deleteToDoAdapter(toDoID) {
		
	return WL.Server.invokeSQLStatement({
		preparedStatement : deleteStatement,
		parameters : [toDoID]
	});
}



