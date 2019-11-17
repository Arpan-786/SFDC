<?xml version="1.0" encoding="utf-8"?><Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_Dup_Field</fullName>
        <field>Duplicate_check__c</field>
        <formula>Faculty__r.Name + Course__r.Name</formula>
        <name>Update Dup Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>JODuplicate</fullName>
        <actions>
            <name>Update_Dup_Field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Student_JO__c.Name</field>
            <operation>notEqual</operation>
            <value></value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
