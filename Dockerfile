FROM public.ecr.aws/lambda/python:3


COPY requirements.txt ${LAMBDA_TASK_ROOT}
RUN pip install -r requirements.txt 

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

CMD [ "lambda_function.handler" ]
#RUN dnf install -y pip vim && pip3 install -r requirements.txt


