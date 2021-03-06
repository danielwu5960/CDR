<div id="sect-tissue-rec" class="div-t">

  <div class="div-t-r div-t-h">Patient Data</div>
    
  <div class="div-t-r clearfix">
   
   
      <div class="left width-30"> 
        <label for="patientId">Patient ID: </label>
              
      </div>
    
      <div class="left ${hasErrors(bean: patientRecordInstance, field: 'patientId', 'errors')}"> 
       
            <g:textField name="patientId" value="${patientRecordInstance?.patientId?.trim()}" />
              
      </div>
      <div class="clear"></div>
  </div>
  
  
  
   <div class="div-t-r clearfix">
   
   
      <div class="left width-30"> 
        <label for="experiment">Experiment: </label>
              
      </div>
    
      <div class=" value left ${hasErrors(bean: patientRecordInstance, field: 'experiment', 'errors')}"> 
        <div>
             <g:if test="${patientRecordInstance.caseRecord?.id && patientRecordInstance.caseRecord.specimens}">
          
            <g:radio  id="exp1" name="experiment"  value="BT" checked="${patientRecordInstance.experiment =='BT'}" disabled ="true"/><label for="exp1">Best Tube</label> &nbsp;&nbsp;&nbsp;
            <g:radio id="exp2" name="experiment"  value="VC" checked="${patientRecordInstance.experiment =='VC'}" disabled="true"/><label for="exp2">Time Course Veridex Comparison</label>
        
       </g:if>
      <g:else>
        
            <g:radio  id="exp1" name="experiment"  value="BT" checked="${patientRecordInstance.experiment =='BT'}" /><label for="exp1">Best Tube</label> &nbsp;&nbsp;&nbsp;
            <g:radio id="exp2" name="experiment"  value="VC" checked="${patientRecordInstance.experiment =='VC'}"  /><label for="exp2">Time Course Veridex Comparison</label>
           
            </g:else>
        </div>
      </div>
      <div class="clear"></div>
  </div>
  
    
  
  <div class="div-t-r clearfix">
   
   
      <div class="left width-30"> 
       <label for="gender">Sex: </label>
              
      </div>
    
      <div class=" value left ${hasErrors(bean: patientRecordInstance, field: 'gender', 'errors')}"> 
        <div>
            
             <g:radio id="gen1" name="gender"  value="Male" checked="${patientRecordInstance.gender =='Male'}"/><label for="gen1">Male</label>&nbsp;&nbsp;&nbsp;
            <g:radio id="gen2" name="gender"  value="Female" checked="${patientRecordInstance.gender =='Female'}"/><label for="gen2">Female</label>&nbsp;&nbsp;&nbsp;
        </div>   
      </div>
      <div class="clear"></div>
  </div>
  
  
  <div class="div-t-r clearfix">
   
   
      <div class="left width-30"> 
        <label for="disease">Disease: </label>
              
      </div>
    
      <div class="left ${hasErrors(bean: patientRecordInstance, field: 'disease', 'errors')}"> 
       
              <g:textField name="disease" value="${patientRecordInstance?.disease ?: 'Breast Cancer'}"/>
              
      </div>
      <div class="clear"></div>
  </div>
  
  
    
<div class="div-t-r clearfix">
   
   
      <div class="left width-30"> 
        <label for="cancerStage">Cancer Stage: </label>
              
      </div>
    
      <div class="left ${hasErrors(bean: patientRecordInstance, field: 'cancerStage', 'errors')}"> 
       
             <g:select name="cancerStage" from="${['Early Stage','Late Stage']}" value="${patientRecordInstance?.cancerStage}" noSelection="['': '']" />
              
      </div>
      <div class="clear"></div>
  </div>
  
  
  
  <div class="div-t-r clearfix">
   
   
      <div class="left width-30"> 
      <label for="collectionSite">Collection Site: </label>
              
      </div>
    
      <div class="left ${hasErrors(bean: patientRecordInstance, field: 'collectionSite', 'errors')}"> 
       
            <g:select name="collectionSite.id" from="${ctcBssList}" optionKey="id"  optionValue="name" value="${patientRecordInstance?.collectionSite?.id}" noSelection="['null': '']" />
      </div>
      <div class="clear"></div>
  </div>
  
  
  
  
  <div class="div-t-r clearfix">
   
   
      <div class="left width-30"> 
      <label for="visit">Visit Number: </label>
              
      </div>
    
      <div class=" value left ${hasErrors(bean: patientRecordInstance, field: 'visit', 'errors')}"> 
        <div>
             <g:radio id="v1" name="visit"  value="One" checked="${patientRecordInstance?.visit =='One'}" disabled="${submittedVisit >1}"/><label for="v1">One</label>&nbsp;&nbsp;&nbsp;
          <g:radio id="v2" name="visit"  value="Two" checked="${patientRecordInstance?.visit =='Two'}" disabled="${submittedVisit >2}"/><label for="v2">Two</label>&nbsp;&nbsp;&nbsp;
          <g:radio id="v3" name="visit"  value="Three" checked="${patientRecordInstance?.visit =='Three'}" disabled="${submittedVisit >3}"/><label for="v3">Three</label>&nbsp;&nbsp;&nbsp;
           <g:radio id="v4" name="visit"  value="Four" checked="${patientRecordInstance?.visit =='Four'}" disabled="${submittedVisit >4}"/><label for="v4">Four</label>&nbsp;&nbsp;&nbsp;
           <g:radio id="v5" name="visit"  value="Five" checked="${patientRecordInstance?.visit =='Five'}" disabled="${submittedVisit >5}"/><label for="v5">Five</label>&nbsp;&nbsp;&nbsp;
           <g:radio id="v6" name="visit"  value="Six" checked="${patientRecordInstance?.visit =='Six'}" disabled="${submittedVisit >6}"/><label for="v6">Six</label>
        </div>
      </div>
      <div class="clear"></div>
  </div>
    
    
   <div class="div-t-r clearfix">
   
   
      <div class="left width-30"> 
      <label for="comments">Comments: </label>
              
      </div>
    
      <div class="left ${hasErrors(bean: patientRecordInstance, field: 'comments', 'errors')}"> 
       
            <g:textArea class="textwide" name="comments" cols="40" rows="5" value="${patientRecordInstance?.comments}" /> 
      </div>
      <div class="clear"></div>
  </div>

  

</div>
