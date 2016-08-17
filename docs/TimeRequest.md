# BillForward::TimeRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **DateTime** | { \&quot;description\&quot; : \&quot;The UTC DateTime when the object was created.\&quot;, \&quot;verbs\&quot;:[] } | [optional] 
**periods** | **Integer** | {\&quot;description\&quot;:\&quot;(Required: one of [&#x60;periods&#x60;, &#x60;to&#x60;])&lt;br&gt;The number of period boundaries up to which the subscription should advance. A 1-value advances the subscription to the end of its current service period. Higher values advance the subscription to subsequent period boundaries.\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**to** | **DateTime** | {\&quot;description\&quot;:\&quot;(Required: one of [&#x60;periods&#x60;, &#x60;to&#x60;])&lt;br&gt;The time up until which the subscription should be fast-forwarded.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**dry_run** | **BOOLEAN** | {\&quot;default\&quot;:false,\&quot;description\&quot;:\&quot;Changes described in the response:&lt;br&gt;&lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;true&lt;/span&gt; &amp;mdash; Are not actually performed; your subscription remains unchanged, no billing events run, and no invoices are executed.&lt;br&gt;&lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;false&lt;/span&gt; &amp;mdash; Are actually performed and committed.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] [default to false]
**skip_intermediate_periods** | **BOOLEAN** | {\&quot;default\&quot;:false,\&quot;description\&quot;:\&quot;As time scrubs forward:&lt;br&gt;&lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;true&lt;/span&gt; &amp;mdash; Raise no invoice upon advancing over a period boundary.&lt;br&gt;&lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;false&lt;/span&gt; &amp;mdash; Raise invoices for any period that is entered.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] [default to false]
**handle_amendments** | **BOOLEAN** | {\&quot;default\&quot;:true,\&quot;description\&quot;:\&quot;As time scrubs forward:&lt;br&gt;&lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;true&lt;/span&gt; &amp;mdash; Run any amendments that were scheduled to action.&lt;br&gt;&lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;false&lt;/span&gt; &amp;mdash; Do not run any amendments that were scheduled to action.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] [default to false]
**execution_strategy** | **String** | {\&quot;default\&quot;:\&quot;&lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;SingleAttempt&lt;/span&gt;\&quot;,\&quot;description\&quot;:\&quot;What strategy to use when executing any invoices raised as time advances:&lt;br&gt;&lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;SingleAttempt&lt;/span&gt; &amp;mdash; Execute any invoice just once.&lt;br&gt;&lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;FollowDunning&lt;/span&gt; &amp;mdash; Apply the existing dunning strategy when executing invoices.&lt;br&gt;&lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;None&lt;/span&gt;: Do not execute invoices.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] 
**freeze_on_completion** | **BOOLEAN** | {\&quot;default\&quot;:false,\&quot;description\&quot;:\&quot;Once the subscription is advanced through time:&lt;br&gt;&lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;true&lt;/span&gt; &amp;mdash; Freeze the subscription.&lt;br&gt;&lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;false&lt;/span&gt; &amp;mdash; Do not freeze the subscription.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] [default to false]
**advance_inclusively** | **BOOLEAN** | {\&quot;default\&quot;:true,\&quot;description\&quot;:\&quot;When advancing onto an instant in time:&lt;br&gt;&lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;true&lt;/span&gt; &amp;mdash; Action the events scheduled for your destination time. Amendments scheduled at your destined time will be actioned during this time travel. Advancing to a period boundary will promote your subscription to the period on the future side of that boundary.&lt;br&gt;&lt;span class&#x3D;\\\&quot;label label-default\\\&quot;&gt;false&lt;/span&gt; &amp;mdash; Do not action events scheduled for your destination time. Amendments scheduled at your destined time will not be actioned during this time travel. Advancing to a period boundary will result in your subscription&#39;s remaining within the period on the past side of that boundary.\&quot;,\&quot;verbs\&quot;:[\&quot;POST\&quot;,\&quot;GET\&quot;]} | [optional] [default to false]

