<?xml version="1.0" encoding="utf-8"?><Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_RT_LCD_Field</fullName>
        <field>RecordTypeId</field>
        <lookupValue>LCD_RT</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Update RT LCD Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Record_Type_LED</fullName>
        <field>RecordTypeId</field>
        <lookupValue>LED_RT</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Update Record Type LED</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Record_Type_Plasma</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Plasma_RT</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Update Record Type Plasma</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>LCD Product Type</fullName>
        <actions>
            <name>Update_RT_LCD_Field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>TV_Sales__c.Product_Type__c</field>
            <operation>equals</operation>
            <value>LCD</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>LED Product Type</fullName>
        <actions>
            <name>Update_Record_Type_LED</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>TV_Sales__c.Product_Type__c</field>
            <operation>equals</operation>
            <value>LED</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Record Type Plasma</fullName>
        <actions>
            <name>Update_Record_Type_Plasma</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>TV_Sales__c.Product_Type__c</field>
            <operation>equals</operation>
            <value>Plasma</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
