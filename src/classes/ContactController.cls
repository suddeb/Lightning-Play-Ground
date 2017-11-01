public with sharing class ContactController {
	@AuraEnabled
	public static List<Contact> getContacts(){
		List<Contact> contacts =	[SELECT 	ID,
												Name,
												MailingStreet,
												Phone,
												Email,
												LeadSource
									 FROM 		CONTACT ];
		if(Schema.sObjectType.Contact.isAccessible()){
			return contacts;
		}else{
			return new List<Contact>();
		}
	}    
}