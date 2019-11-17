<?xml version="1.0" encoding="utf-8"?><Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_update_Delayed_Application_processing</fullName>
        <description>Email update Delayed Application processing</description>
        <protected>false</protected>
        <recipients>
            <field>Email_Id__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Job_Application_Delay_Tempalate1</template>
    </alerts>
    <fieldUpdates>
        <fullName>FU_Job_Status</fullName>
        <field>Job_Status__c</field>
        <formula>'Sorry, your application will be delayed'</formula>
        <name>FU_Job_Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Initial_Message</fullName>
        <field>Approval_Status__c</field>
        <formula>'Sent for Approval'</formula>
        <name>Initial Message</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Recall_Message</fullName>
        <field>Approval_Status__c</field>
        <formula>'Candidate does not want to proceed further for Aus Job opportunity'</formula>
        <name>Recall Message</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Approval_Status</fullName>
        <field>Approval_Status__c</field>
        <formula>'Congratulations! Kindly proceed for the Australia application(FA)'</formula>
        <name>Update Approval Status on Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Approval_Status_Action</fullName>
        <field>Approval_Status__c</field>
        <formula>'Congratulations! Kindly proceed for the Australia application'</formula>
        <name>Update Approval Status Action</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <outboundMessages>
        <fullName>Send_Data_to_Dot_Net</fullName>
        <apiVersion>45.0</apiVersion>
        <endpointUrl>https://ibm.com/jobdatafromsfdc</endpointUrl>
        <fields>Email_Id__c</fields>
        <fields>Experience_in_Months__c</fields>
        <fields>First_Name__c</fields>
        <fields>Gender__c</fields>
        <fields>Id</fields>
        <fields>Job_Status__c</fields>
        <includeSessionId>true</includeSessionId>
        <integrationUser>arpan.sharma2@cognizant.com</integrationUser>
        <name>Send Data to Dot Net</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Job Form WFR</fullName>
        <actions>
            <name>Email_update_Delayed_Application_processing</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>FU_Job_Status</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Send_Data_to_Dot_Net</name>
            <type>OutboundMessage</type>
        </actions>
        <actions>
            <name>Return_Doc_Task</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Job_Form__c.Preferred_Country__c</field>
            <operation>equals</operation>
            <value>Finland</value>
        </criteriaItems>
        <criteriaItems>
            <field>Job_Form__c.Experience_in_Months__c</field>
            <operation>lessThan</operation>
            <value>12</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Email_update_Delayed_Application_processing</name>
                <type>Alert</type>
            </actions>
            <timeLength>2</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <tasks>
        <fullName>Return_Doc_Task</fullName>
        <assignedTo>SVPHumanResources</assignedTo>
        <assignedToType>role</assignedToType>
        <description>Hi,
Kindly return the candidates documents as his application will be delayed. 


Regards,
HR Team</description>
        <dueDateOffset>5</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>Return Doc Task</subject>
    </tasks>
</Workflow>
